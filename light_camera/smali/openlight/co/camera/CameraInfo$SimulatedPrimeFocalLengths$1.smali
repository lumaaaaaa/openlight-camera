.class final enum Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths$1;
.super Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;-><init>(Ljava/lang/String;IILopenlight/co/camera/CameraInfo$1;)V

    return-void
.end method


# virtual methods
.method public isDefault(Lopenlight/co/camera/CameraMode;)Z
    .registers 2

    .line 52
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result p0

    return p0
.end method
