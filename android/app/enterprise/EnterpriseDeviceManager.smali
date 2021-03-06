.class public Landroid/app/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;,
        Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_ENTERPRISE_MIGRATION:Ljava/lang/String; = "android.intent.action.sec.ENTERPRISE_MIGRATION"

.field public static final ACTION_NOTIFY_STORAGE_CARD:Ljava/lang/String; = "android.app.enterprise.action.NOTIFY_STORAGE_CARD"

.field public static final APN_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "apn_settings_policy"

.field public static final APPLICATION_POLICY_SERVICE:Ljava/lang/String; = "application_policy"

.field public static final BLUETOOTH_POLICY_SERVICE:Ljava/lang/String; = "bluetooth_policy"

.field public static final BROWSER_SETTINGS_POLICY_SERVICE:Ljava/lang/String; = "browser_policy"

.field public static final CALLING_POLICY_SERVICE:Ljava/lang/String; = "calling_policy"

.field public static final DATA_FADE_POLICY_SERVICE:Ljava/lang/String; = "data_fade_policy"

.field public static final DATE_TIME_POLICY_SERVICE:Ljava/lang/String; = "date_time_policy"

.field public static final DEVICE_INVENTORY_SERVICE:Ljava/lang/String; = "device_info"

.field public static final DO_KEYGUARD:Ljava/lang/String; = "android.app.enterprise.action.DO_KEYGUARD"

.field public static final EAS_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "eas_account_policy"

.field public static final EMAIL_ACCOUNT_POLICY_SERVICE:Ljava/lang/String; = "email_account_policy"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_VPN_POLICY_SERVICE:Ljava/lang/String; = "enterprise_vpn_policy"

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_CURRENT_VERSION:Ljava/lang/String; = "currentVersion"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final EXTRA_MIGRATION_RESULT:Ljava/lang/String; = "migrationResult"

.field public static final FIREWALL_POLICY_SERVICE:Ljava/lang/String; = "firewall_policy"

.field public static final LOCATION_POLICY_SERVICE:Ljava/lang/String; = "location_policy"

.field public static final MISC_POLICY_SERVICE:Ljava/lang/String; = "misc_policy"

.field public static final MTP_BLOCKED:Ljava/lang/String; = "android.app.enterprise.action.MTP_BLOCKED"

.field public static final PASSWORD_POLICY_SERVICE:Ljava/lang/String; = "password_policy"

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PHONE_RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "phone_restriction_policy"

.field public static final REMOTE_INJECTION_SERVICE:Ljava/lang/String; = "remoteinjection"

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final RESTRICTION_POLICY_SERVICE:Ljava/lang/String; = "restriction_policy"

.field public static final ROAMING_POLICY_SERVICE:Ljava/lang/String; = "roaming_policy"

.field public static final SECURITY_POLICY_SERVICE:Ljava/lang/String; = "security_policy"

.field private static TAG:Ljava/lang/String; = null

.field public static final VPN_POLICY_SERVICE:Ljava/lang/String; = "vpn_policy"

.field public static final WIFI_POLICY_SERVICE:Ljava/lang/String; = "wifi_policy"

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field private mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

.field private mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

.field private mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDatafadePolicy:Landroid/app/enterprise/DatafadePolicy;

.field private mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

.field private mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

.field private mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

.field private mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

.field private mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

.field private mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

.field private mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

.field private mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

.field private mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

.field private mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

.field private final mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private final mSync:Ljava/lang/Object;

.field private mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "EnterpriseDeviceManager"

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 670
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 88
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 90
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 94
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0, p0, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 95
    .local v0, me:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v1, v0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_a

    .end local v0           #me:Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_9
    return-object v0

    .restart local v0       #me:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .registers 5
    .parameter "reqPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_9

    .line 530
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 535
    :cond_9
    :goto_9
    return-void

    .line 531
    :catch_a
    move-exception v0

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 404
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 406
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 411
    :goto_a
    return-object v1

    .line 407
    :catch_b
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getActiveAdmins()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 422
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdmins()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 427
    :goto_a
    return-object v1

    .line 423
    :catch_b
    move-exception v0

    .line 424
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAdminRemovable()Z
    .registers 4

    .prologue
    .line 576
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 578
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getAdminRemovable()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 583
    :goto_a
    return v1

    .line 579
    :catch_b
    move-exception v0

    .line 580
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public getApnSettingsPolicy()Landroid/app/enterprise/ApnSettingsPolicy;
    .registers 3

    .prologue
    .line 828
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 829
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    if-nez v0, :cond_e

    .line 830
    new-instance v0, Landroid/app/enterprise/ApnSettingsPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ApnSettingsPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    .line 831
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 832
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    return-object v0

    .line 831
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;
    .registers 3

    .prologue
    .line 711
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    if-nez v0, :cond_e

    .line 713
    new-instance v0, Landroid/app/enterprise/ApplicationPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ApplicationPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    .line 714
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 715
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    return-object v0

    .line 714
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;
    .registers 3

    .prologue
    .line 906
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 907
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    if-nez v0, :cond_e

    .line 908
    new-instance v0, Landroid/app/enterprise/BluetoothPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/BluetoothPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    .line 909
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 910
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    return-object v0

    .line 909
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getBrowserPolicy()Landroid/app/enterprise/BrowserPolicy;
    .registers 3

    .prologue
    .line 919
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    if-nez v0, :cond_e

    .line 921
    new-instance v0, Landroid/app/enterprise/BrowserPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/BrowserPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    .line 922
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 923
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/app/enterprise/BrowserPolicy;

    return-object v0

    .line 922
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getCallingPolicy()Landroid/app/enterprise/CallingPolicy;
    .registers 3

    .prologue
    .line 867
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 868
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

    if-nez v0, :cond_e

    .line 869
    new-instance v0, Landroid/app/enterprise/CallingPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/CallingPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

    .line 870
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 871
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mCallingPolicy:Landroid/app/enterprise/CallingPolicy;

    return-object v0

    .line 870
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    return v0
.end method

.method public getDatafadePolicy()Landroid/app/enterprise/DatafadePolicy;
    .registers 3

    .prologue
    .line 961
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 962
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDatafadePolicy:Landroid/app/enterprise/DatafadePolicy;

    if-nez v0, :cond_e

    .line 963
    new-instance v0, Landroid/app/enterprise/DatafadePolicy;

    invoke-direct {v0}, Landroid/app/enterprise/DatafadePolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDatafadePolicy:Landroid/app/enterprise/DatafadePolicy;

    .line 964
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 965
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDatafadePolicy:Landroid/app/enterprise/DatafadePolicy;

    return-object v0

    .line 964
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;
    .registers 3

    .prologue
    .line 974
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 975
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

    if-nez v0, :cond_e

    .line 976
    new-instance v0, Landroid/app/enterprise/DateTimePolicy;

    invoke-direct {v0}, Landroid/app/enterprise/DateTimePolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

    .line 977
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 978
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/app/enterprise/DateTimePolicy;

    return-object v0

    .line 977
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getDeviceInventory()Landroid/app/enterprise/DeviceInventory;
    .registers 3

    .prologue
    .line 815
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

    if-nez v0, :cond_e

    .line 817
    new-instance v0, Landroid/app/enterprise/DeviceInventory;

    invoke-direct {v0}, Landroid/app/enterprise/DeviceInventory;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

    .line 818
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 819
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/app/enterprise/DeviceInventory;

    return-object v0

    .line 818
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getEmailAccountPolicy()Landroid/app/enterprise/EmailAccountPolicy;
    .registers 3

    .prologue
    .line 789
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

    if-nez v0, :cond_e

    .line 791
    new-instance v0, Landroid/app/enterprise/EmailAccountPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/EmailAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

    .line 792
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 793
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEmailAccountPolicy:Landroid/app/enterprise/EmailAccountPolicy;

    return-object v0

    .line 792
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getEnterpriseKeyVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .registers 2

    .prologue
    .line 625
    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object v0
.end method

.method public getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;
    .registers 2

    .prologue
    .line 639
    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v0
.end method

.method public getEnterpriseVpnPolicy()Landroid/app/enterprise/EnterpriseVpnPolicy;
    .registers 3

    .prologue
    .line 932
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 934
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

    if-nez v0, :cond_e

    .line 935
    new-instance v0, Landroid/app/enterprise/EnterpriseVpnPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseVpnPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

    .line 937
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 939
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEnterpriseVpnPolicy:Landroid/app/enterprise/EnterpriseVpnPolicy;

    return-object v0

    .line 937
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getExchangeAccountPolicy()Landroid/app/enterprise/ExchangeAccountPolicy;
    .registers 3

    .prologue
    .line 724
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    if-nez v0, :cond_e

    .line 726
    new-instance v0, Landroid/app/enterprise/ExchangeAccountPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/ExchangeAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    .line 727
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 728
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mEasAccountPolicy:Landroid/app/enterprise/ExchangeAccountPolicy;

    return-object v0

    .line 727
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getFirewallPolicy()Landroid/app/enterprise/FirewallPolicy;
    .registers 4

    .prologue
    .line 893
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 894
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

    if-nez v0, :cond_10

    .line 895
    new-instance v0, Landroid/app/enterprise/FirewallPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/FirewallPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

    .line 896
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 897
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/app/enterprise/FirewallPolicy;

    return-object v0

    .line 896
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getLocationPolicy()Landroid/app/enterprise/LocationPolicy;
    .registers 3

    .prologue
    .line 854
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 855
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    if-nez v0, :cond_e

    .line 856
    new-instance v0, Landroid/app/enterprise/LocationPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/LocationPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    .line 857
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 858
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/app/enterprise/LocationPolicy;

    return-object v0

    .line 857
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMaximumTimeToLock()J
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .registers 3
    .parameter "admin"

    .prologue
    .line 353
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMiscPolicy()Landroid/app/enterprise/MiscPolicy;
    .registers 4

    .prologue
    .line 750
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    if-nez v0, :cond_10

    .line 752
    new-instance v0, Landroid/app/enterprise/MiscPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/MiscPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    .line 753
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 754
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/app/enterprise/MiscPolicy;

    return-object v0

    .line 753
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .parameter "admin"

    .prologue
    .line 365
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .registers 3
    .parameter "admin"

    .prologue
    .line 282
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .registers 3
    .parameter "admin"

    .prologue
    .line 317
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordMaximumLength(I)I
    .registers 3
    .parameter "quality"

    .prologue
    .line 181
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength()I
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;
    .registers 4

    .prologue
    .line 802
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-nez v0, :cond_10

    .line 804
    new-instance v0, Landroid/app/enterprise/PasswordPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/PasswordPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 805
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 806
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/app/enterprise/PasswordPolicy;

    return-object v0

    .line 805
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getPasswordQuality()I
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;
    .registers 3

    .prologue
    .line 948
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 949
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    if-nez v0, :cond_e

    .line 950
    new-instance v0, Landroid/app/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/PhoneRestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    .line 951
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 952
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    return-object v0

    .line 951
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 6
    .parameter "admin"
    .parameter "result"

    .prologue
    .line 512
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_9

    .line 514
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 519
    :cond_9
    :goto_9
    return-void

    .line 515
    :catch_a
    move-exception v0

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .registers 4

    .prologue
    .line 763
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-nez v0, :cond_10

    .line 765
    new-instance v0, Landroid/app/enterprise/RestrictionPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 766
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 767
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0

    .line 766
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;
    .registers 3

    .prologue
    .line 737
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 738
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-nez v0, :cond_e

    .line 739
    new-instance v0, Landroid/app/enterprise/RoamingPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/RoamingPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 740
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 741
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    return-object v0

    .line 740
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;
    .registers 4

    .prologue
    .line 776
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 777
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

    if-nez v0, :cond_10

    .line 778
    new-instance v0, Landroid/app/enterprise/SecurityPolicy;

    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/enterprise/SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 779
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_14

    .line 780
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSecurityPolicy:Landroid/app/enterprise/SecurityPolicy;

    return-object v0

    .line 779
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getVpnPolicy()Landroid/app/enterprise/VpnPolicy;
    .registers 3

    .prologue
    .line 841
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 842
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    if-nez v0, :cond_e

    .line 843
    new-instance v0, Landroid/app/enterprise/VpnPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/VpnPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    .line 844
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 845
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mVpnPolicy:Landroid/app/enterprise/VpnPolicy;

    return-object v0

    .line 844
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getWifiPolicy()Landroid/app/enterprise/WifiPolicy;
    .registers 3

    .prologue
    .line 880
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 881
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    if-nez v0, :cond_e

    .line 882
    new-instance v0, Landroid/app/enterprise/WifiPolicy;

    invoke-direct {v0}, Landroid/app/enterprise/WifiPolicy;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 883
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 884
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    return-object v0

    .line 883
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public hasAnyActiveAdmin()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 991
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v2, :cond_d

    .line 992
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "No EnterpriseDeviceManager service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :goto_c
    return v1

    .line 996
    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->hasAnyActiveAdmin()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result v1

    goto :goto_c

    .line 997
    :catch_14
    move-exception v0

    .line 998
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get hasAnyActiveAdmin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 6
    .parameter "admin"
    .parameter "usesPolicy"

    .prologue
    .line 460
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 462
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 467
    :goto_a
    return v1

    .line 463
    :catch_b
    move-exception v0

    .line 464
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isActivePasswordSufficient()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    return v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "who"

    .prologue
    .line 387
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 389
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 394
    :goto_a
    return v1

    .line 390
    :catch_b
    move-exception v0

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 5
    .parameter "adminReceiver"

    .prologue
    .line 1022
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 1024
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->isAdminRemovable(Landroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1029
    :goto_a
    return v1

    .line 1025
    :catch_b
    move-exception v0

    .line 1026
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1029
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public lockNow()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 240
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5
    .parameter "packageName"

    .prologue
    .line 1007
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 1009
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1014
    :goto_a
    return v1

    .line 1010
    :catch_b
    move-exception v0

    .line 1011
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 375
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reboot(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "adminReceiver"

    .prologue
    .line 484
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_9

    .line 486
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 491
    :cond_9
    :goto_9
    return-void

    .line 487
    :catch_a
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "adminReceiver"

    .prologue
    .line 498
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_9

    .line 500
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 505
    :cond_9
    :goto_9
    return-void

    .line 501
    :catch_a
    move-exception v0

    .line 502
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .registers 4
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 214
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 6
    .parameter "adminReceiver"
    .parameter "refreshing"

    .prologue
    .line 437
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_9

    .line 439
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 444
    :cond_9
    :goto_9
    return-void

    .line 440
    :catch_a
    move-exception v0

    .line 441
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAdminRemovable(Z)Z
    .registers 5
    .parameter "removable"

    .prologue
    .line 553
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 555
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->setAdminRemovable(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 560
    :goto_a
    return v1

    .line 556
    :catch_b
    move-exception v0

    .line 557
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setMaximumFailedPasswordsForWipe(I)V
    .registers 4
    .parameter "num"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 197
    return-void
.end method

.method public setMaximumTimeToLock(J)V
    .registers 5
    .parameter "timeMs"

    .prologue
    .line 222
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 223
    return-void
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .registers 4
    .parameter "admin"
    .parameter "size"

    .prologue
    .line 340
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 341
    return-void
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .registers 4
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 269
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 270
    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .registers 4
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 304
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 305
    return-void
.end method

.method public setPasswordMinimumLength(I)V
    .registers 4
    .parameter "length"

    .prologue
    .line 167
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 168
    return-void
.end method

.method public setPasswordQuality(I)V
    .registers 4
    .parameter "quality"

    .prologue
    .line 153
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 154
    return-void
.end method

.method public submitEnterprisePayload([B)Z
    .registers 5
    .parameter "payload"

    .prologue
    .line 604
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-eqz v1, :cond_13

    .line 606
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseDeviceManager;->submitEnterprisePayload([B)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 611
    :goto_a
    return v1

    .line 607
    :catch_b
    move-exception v0

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with enterprise policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public wipeData(I)V
    .registers 3
    .parameter "flags"

    .prologue
    .line 247
    iget-object v0, p0, Landroid/app/enterprise/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 248
    return-void
.end method
