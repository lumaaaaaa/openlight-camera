.class Landroid/support/v4/app/ListFragment$1;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/ListFragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ListFragment;)V
    .registers 2

    .line 49
    iput-object p1, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;

    iget-object v0, v0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object p0, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;

    iget-object p0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
