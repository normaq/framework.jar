.class public Landroid/hardware/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "android.hardware.motion.MOTION_RECOGNITION_EVENT"

.field public static final EVENT_ALL:I = 0x3f

.field public static final EVENT_DOUBLE_TAP:I = 0x4

.field public static final EVENT_NUM:I = 0x6

.field public static final EVENT_OVER_TURN:I = 0x1

.field public static final EVENT_PANNING_GALLERY:I = 0x10

.field public static final EVENT_PANNING_HOME:I = 0x20

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_TILT:I = 0x8

.field public static final MOTION_SENSOR_NUM:I = 0x2

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0x3

.field public static final MOTION_USE_GYRO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z


# instance fields
.field mMainLooper:Landroid/os/Looper;

.field private motionService:Landroid/hardware/motion/IMotionRecognitionService;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .parameter "mainLooper"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    .line 46
    const-string/jumbo v0, "motion_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    .line 48
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    .line 49
    return-void
.end method

.method public static isValidMotionSensor(I)Z
    .registers 3
    .parameter "motion_sensor"

    .prologue
    const/4 v0, 0x1

    .line 184
    if-eq p0, v0, :cond_6

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public registerListener(Landroid/hardware/motion/MRListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 54
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;I)V
    .registers 4
    .parameter "listener"
    .parameter "motion_sensors"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 62
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .registers 12
    .parameter "listener"
    .parameter "motion_sensors"
    .parameter "handler"

    .prologue
    .line 65
    and-int/lit8 p2, p2, 0x3

    .line 66
    and-int/lit8 v4, p2, 0x3

    if-nez v4, :cond_7

    .line 67
    const/4 p2, 0x1

    .line 69
    :cond_7
    if-eqz p1, :cond_4c

    .line 70
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 71
    :try_start_c
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 72
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v3, :cond_50

    .line 73
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 74
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v4

    if-ne v4, p1, :cond_4d

    .line 75
    const-string v4, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit v5

    .line 93
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :cond_4c
    :goto_4c
    return-void

    .line 72
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 80
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_50
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 81
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_61

    .line 83
    :try_start_5a
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_61
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5f} :catch_64

    .line 91
    :goto_5f
    :try_start_5f
    monitor-exit v5

    goto :goto_4c

    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_61
    move-exception v4

    monitor-exit v5
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_61

    throw v4

    .line 84
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :catch_64
    move-exception v0

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    :try_start_65
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in registerListener: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_61

    goto :goto_5f
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;Landroid/os/Handler;)V
    .registers 4
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 58
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;I)V
    .registers 4
    .parameter "listener"
    .parameter "motion_event"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 98
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .registers 13
    .parameter "listener"
    .parameter "motion_event"
    .parameter "handler"

    .prologue
    .line 101
    const/4 v3, 0x1

    .line 103
    .local v3, motion_sensors:I
    sparse-switch p2, :sswitch_data_70

    .line 120
    :goto_4
    :sswitch_4
    if-eqz p1, :cond_49

    .line 121
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 122
    :try_start_9
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 123
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v4, :cond_52

    .line 124
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 125
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_4f

    .line 126
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .registerListenerEvent : fail. already registered / listener count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", listener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v6

    .line 143
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4           #size:I
    :cond_49
    :goto_49
    return-void

    .line 111
    :sswitch_4a
    or-int/lit8 v3, v3, 0x2

    .line 112
    goto :goto_4

    .line 114
    :sswitch_4d
    const/4 v3, 0x3

    .line 115
    goto :goto_4

    .line 123
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v4       #size:I
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 130
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_52
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, v3, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 131
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_63

    .line 133
    :try_start_5c
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5, v2, v3}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_61} :catch_66

    .line 141
    :goto_61
    :try_start_61
    monitor-exit v6

    goto :goto_49

    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4           #size:I
    :catchall_63
    move-exception v5

    monitor-exit v6
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_63

    throw v5

    .line 134
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v4       #size:I
    :catch_66
    move-exception v0

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    :try_start_67
    const-string v5, "MotionRecognitionManager"

    const-string v7, "RemoteException in registerListenerEvent: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_63

    goto :goto_61

    .line 103
    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x4 -> :sswitch_4a
        0x8 -> :sswitch_4a
        0x10 -> :sswitch_4a
        0x20 -> :sswitch_4a
        0x3f -> :sswitch_4d
    .end sparse-switch
.end method

.method public setLogPath(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1, p1}, Landroid/hardware/motion/IMotionRecognitionService;->setLogPath(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 194
    :goto_5
    return-void

    .line 191
    :catch_6
    move-exception v0

    .line 192
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in setLogPath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;)V
    .registers 9
    .parameter "listener"

    .prologue
    .line 146
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 147
    :try_start_3
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 148
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v3, :cond_24

    .line 149
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 150
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v4

    if-ne v4, p1, :cond_32

    .line 151
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_2f

    .line 153
    :try_start_1f
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2}, Landroid/hardware/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_26

    .line 162
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v5

    .line 163
    return-void

    .line 154
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_26
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 162
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_2f
    move-exception v4

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw v4

    .line 148
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public useMotionAlways(Landroid/hardware/motion/MRListener;Z)V
    .registers 10
    .parameter "listener"
    .parameter "bUseAlways"

    .prologue
    .line 166
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 167
    :try_start_3
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 168
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v3, :cond_30

    .line 169
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 170
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2a

    move-result-object v4

    if-ne v4, p1, :cond_2d

    .line 172
    :try_start_1a
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->useMotionAlways(Landroid/os/IBinder;Z)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    .line 176
    :goto_1f
    :try_start_1f
    monitor-exit v5

    .line 181
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_20
    return-void

    .line 173
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_21
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in useMotionAlways: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v4

    .line 168
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 179
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_30
    :try_start_30
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .useMotionAlways : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_2a

    goto :goto_20
.end method
