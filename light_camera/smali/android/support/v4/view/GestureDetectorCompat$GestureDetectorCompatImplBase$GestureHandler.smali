.class Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .registers 2

    .line 103
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
    .registers 3

    .line 107
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 108
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4c

    .line 134
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :pswitch_1c
    iget-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object p1, p1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p1, :cond_4b

    .line 125
    iget-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-boolean p1, p1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    if-nez p1, :cond_34

    .line 126
    iget-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object p1, p1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object p0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object p0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {p1, p0}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_4b

    .line 128
    :cond_34
    iget-object p0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    goto :goto_4b

    .line 119
    :pswitch_3a
    iget-object p0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-virtual {p0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->dispatchLongPress()V

    goto :goto_4b

    .line 115
    :pswitch_40
    iget-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object p1, p1, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object p0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    iget-object p0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {p1, p0}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_4b
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3a
        :pswitch_1c
    .end packed-switch
.end method
