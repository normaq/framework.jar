.class public Landroid/app/enterprise/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/ILocationPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "LocationPolicy"

    sput-object v0, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "location_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ILocationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ILocationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    .line 26
    return-void
.end method


# virtual methods
.method public forceLocationProvidersEnable(Z)Z
    .registers 5
    .parameter "force"

    .prologue
    .line 171
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> forceLocationProvidersEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_1a

    .line 174
    :try_start_b
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->forceLocationProvidersEnable(Z)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    .line 181
    :goto_11
    return v1

    .line 175
    :catch_12
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "forceLocationProvidersEnable - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getAllLocationProviders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> getAllLocationProviders"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_1a

    .line 136
    :try_start_b
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ILocationPolicy;->getAllLocationProviders()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    .line 143
    :goto_11
    return-object v1

    .line 137
    :catch_12
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getAllLocationProviders - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getLocationProviderState(Ljava/lang/String;)Z
    .registers 5
    .parameter "provider"

    .prologue
    .line 91
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_14

    .line 93
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->getIndividualLocationProvider(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 102
    :goto_a
    return v1

    .line 94
    :catch_b
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIndividualLocationPolicy - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .registers 5
    .parameter "SProvider"

    .prologue
    .line 112
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_14

    .line 114
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 119
    :goto_a
    return v1

    .line 115
    :catch_b
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isLocationPolicyEnabled - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isLocationProvidersEnableForced()Z
    .registers 4

    .prologue
    .line 152
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, ">>> isLocationProvidersEnableForced"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_1b

    .line 155
    :try_start_b
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ILocationPolicy;->isLocationProvidersEnableForced()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    .line 162
    :goto_11
    return v1

    .line 156
    :catch_12
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isLocationProvidersEnableForced - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public setLocationProviderState(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "provider"
    .parameter "enable"

    .prologue
    .line 67
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_14

    .line 69
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ILocationPolicy;->setIndividualLocationProvider(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 78
    :goto_a
    return v1

    .line 70
    :catch_b
    move-exception v0

    .line 71
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLocationProviderState - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setLocationProviders(Z)Z
    .registers 5
    .parameter "enable"

    .prologue
    .line 39
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    if-eqz v1, :cond_14

    .line 41
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/LocationPolicy;->mService:Landroid/app/enterprise/ILocationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ILocationPolicy;->setLocationProviders(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 46
    :goto_a
    return v1

    .line 42
    :catch_b
    move-exception v0

    .line 43
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLocationPolicy - Failed talking with Location service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_14
    const/4 v1, 0x0

    goto :goto_a
.end method
