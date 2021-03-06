.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioStreamType:I

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mSmallIcon:I

.field private mSmallIconLevel:I

.field private mSound:Landroid/net/Uri;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mVibrate:[J

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 763
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 768
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 769
    return-void
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 1085
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_7

    .line 1086
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1088
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    const v0, 0x10900a7

    :goto_e
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_6

    :cond_13
    const v0, 0x10900a8

    goto :goto_e
.end method

.method private makeRemoteViews(I)Landroid/widget/RemoteViews;
    .registers 12
    .parameter "resId"

    .prologue
    const v9, 0x102000d

    const v7, 0x1020006

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v8, 0x102035e

    .line 1036
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1037
    .local v0, contentView:Landroid/widget/RemoteViews;
    const/4 v2, 0x0

    .line 1038
    .local v2, hasLine3:Z
    iget v6, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    if-eqz v6, :cond_7a

    .line 1039
    iget v6, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1040
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1044
    :goto_24
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_30

    .line 1045
    const v6, 0x1020016

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1047
    :cond_30
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3d

    .line 1048
    const v6, 0x1020048

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1049
    const/4 v2, 0x1

    .line 1051
    :cond_3d
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v6, :cond_7e

    .line 1052
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1053
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1054
    const/4 v2, 0x1

    .line 1070
    :goto_4a
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v6, :cond_52

    iget-boolean v6, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v6, :cond_bb

    .line 1071
    :cond_52
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    iget v7, p0, Landroid/app/Notification$Builder;->mProgress:I

    iget-boolean v8, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {v0, v9, v6, v7, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1073
    invoke-virtual {v0, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1077
    :goto_5e
    iget-wide v6, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_71

    .line 1078
    const v6, 0x1020066

    const-string/jumbo v7, "setTime"

    iget-wide v8, p0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1080
    :cond_71
    const v6, 0x102035d

    if-eqz v2, :cond_bf

    :goto_76
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1081
    return-object v0

    .line 1042
    :cond_7a
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_24

    .line 1055
    :cond_7e
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v6, :cond_b7

    .line 1056
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1058
    .local v3, tooBig:I
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v6, v3, :cond_a8

    .line 1059
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1065
    :goto_a3
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1066
    const/4 v2, 0x1

    .line 1067
    goto :goto_4a

    .line 1062
    :cond_a8
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 1063
    .local v1, f:Ljava/text/NumberFormat;
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_a3

    .line 1068
    .end local v1           #f:Ljava/text/NumberFormat;
    .end local v3           #tooBig:I
    :cond_b7
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4a

    .line 1075
    :cond_bb
    invoke-virtual {v0, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5e

    :cond_bf
    move v4, v5

    .line 1080
    goto :goto_76
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 1095
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_7

    .line 1096
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1103
    :goto_6
    return-object v0

    .line 1098
    :cond_7
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1b

    .line 1099
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_17

    const v0, 0x10900a9

    :goto_12
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_6

    :cond_17
    const v0, 0x10900aa

    goto :goto_12

    .line 1103
    :cond_1b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private setFlag(IZ)V
    .registers 5
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 1028
    if-eqz p2, :cond_8

    .line 1029
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 1033
    :goto_7
    return-void

    .line 1031
    :cond_8
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_7
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .registers 4

    .prologue
    .line 1113
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1114
    .local v0, n:Landroid/app/Notification;
    iget-wide v1, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 1115
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 1116
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 1117
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 1118
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1119
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1120
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1121
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1122
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1123
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1124
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1125
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1126
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1127
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 1128
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1129
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 1130
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 1131
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1132
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1133
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-eqz v1, :cond_63

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_63

    .line 1134
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1136
    :cond_63
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6f

    .line 1137
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1139
    :cond_6f
    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "autoCancel"

    .prologue
    .line 1009
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1010
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "views"

    .prologue
    .line 857
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 858
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "info"

    .prologue
    .line 838
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 839
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "intent"

    .prologue
    .line 870
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 871
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "text"

    .prologue
    .line 820
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 821
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "title"

    .prologue
    .line 812
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 813
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "defaults"

    .prologue
    .line 1023
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 1024
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "intent"

    .prologue
    .line 882
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 883
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .registers 4
    .parameter "intent"
    .parameter "highPriority"

    .prologue
    .line 900
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 901
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 902
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "icon"

    .prologue
    .line 929
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 930
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .registers 4
    .parameter "argb"
    .parameter "onMs"
    .parameter "offMs"

    .prologue
    .line 971
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 972
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 973
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 974
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "number"

    .prologue
    .line 830
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 831
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "ongoing"

    .prologue
    .line 989
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 990
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "onlyAlertOnce"

    .prologue
    .line 998
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 999
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .registers 4
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 847
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 848
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 849
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 850
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "icon"

    .prologue
    .line 788
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 789
    return-object p0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "icon"
    .parameter "level"

    .prologue
    .line 803
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 804
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 805
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "sound"

    .prologue
    .line 937
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 938
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 939
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "sound"
    .parameter "streamType"

    .prologue
    .line 949
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 950
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 951
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "tickerText"

    .prologue
    .line 910
    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 911
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "tickerText"
    .parameter "views"

    .prologue
    .line 920
    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 921
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 922
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "pattern"

    .prologue
    .line 961
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 962
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "when"

    .prologue
    .line 776
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 777
    return-object p0
.end method
