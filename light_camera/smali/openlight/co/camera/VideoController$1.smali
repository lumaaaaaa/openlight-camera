.class Lopenlight/co/camera/VideoController$1;
.super Landroid/os/Handler;
.source "VideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/VideoController;


# direct methods
.method constructor <init>(Lopenlight/co/camera/VideoController;Landroid/os/Looper;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 112
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_6e

    goto :goto_6c

    .line 122
    :pswitch_7
    iget-object p1, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # getter for: Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;
    invoke-static {p1}, Lopenlight/co/camera/VideoController;->access$300(Lopenlight/co/camera/VideoController;)Lopenlight/co/camera/managers/video/VideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/video/VideoManager;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 123
    iget-object p1, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # getter for: Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;
    invoke-static {p1}, Lopenlight/co/camera/VideoController;->access$300(Lopenlight/co/camera/VideoController;)Lopenlight/co/camera/managers/video/VideoManager;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$State;->CONTINUE_RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/managers/video/VideoManager;->setCurrentState(Lopenlight/co/camera/managers/video/VideoManager$State;)V

    .line 125
    iget-object p1, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # getter for: Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;
    invoke-static {p1}, Lopenlight/co/camera/VideoController;->access$300(Lopenlight/co/camera/VideoController;)Lopenlight/co/camera/managers/video/VideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/video/VideoManager;->stopRecording()V

    .line 126
    iget-object p1, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # getter for: Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lopenlight/co/camera/VideoController;->access$400(Lopenlight/co/camera/VideoController;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0e0102

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object p1, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # getter for: Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;
    invoke-static {p1}, Lopenlight/co/camera/VideoController;->access$300(Lopenlight/co/camera/VideoController;)Lopenlight/co/camera/managers/video/VideoManager;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/video/VideoManager;->continueRecording()V

    .line 130
    iget-object p0, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # getter for: Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;
    invoke-static {p0}, Lopenlight/co/camera/VideoController;->access$100(Lopenlight/co/camera/VideoController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x12e

    .line 131
    # getter for: Lopenlight/co/camera/VideoController;->RECORDING_MAX_DURATION_MS:J
    invoke-static {}, Lopenlight/co/camera/VideoController;->access$500()J

    move-result-wide v0

    .line 130
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6c

    .line 119
    :pswitch_50
    iget-object p0, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # getter for: Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;
    invoke-static {p0}, Lopenlight/co/camera/VideoController;->access$200(Lopenlight/co/camera/VideoController;)Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->enableControls(Z)V

    goto :goto_6c

    .line 114
    :pswitch_5a
    iget-object p1, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # invokes: Lopenlight/co/camera/VideoController;->updateTimerSeconds()V
    invoke-static {p1}, Lopenlight/co/camera/VideoController;->access$000(Lopenlight/co/camera/VideoController;)V

    .line 115
    iget-object p0, p0, Lopenlight/co/camera/VideoController$1;->this$0:Lopenlight/co/camera/VideoController;

    # getter for: Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;
    invoke-static {p0}, Lopenlight/co/camera/VideoController;->access$100(Lopenlight/co/camera/VideoController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x12c

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6c
    :goto_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x12c
        :pswitch_5a
        :pswitch_50
        :pswitch_7
    .end packed-switch
.end method
