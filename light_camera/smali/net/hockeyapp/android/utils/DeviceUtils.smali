.class public Lnet/hockeyapp/android/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/DeviceUtils$DeviceUtilsHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/DeviceUtils$1;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/DeviceUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/DeviceUtils;
    .registers 1

    .line 32
    sget-object v0, Lnet/hockeyapp/android/utils/DeviceUtils$DeviceUtilsHolder;->INSTANCE:Lnet/hockeyapp/android/utils/DeviceUtils;

    return-object v0
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string p0, ""

    return-object p0

    .line 57
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, ""

    return-object p0

    .line 62
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    .line 66
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public getCurrentVersionCode(Landroid/content/Context;)I
    .registers 2

    .line 42
    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
