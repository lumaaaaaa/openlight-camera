.class Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;

.field final synthetic val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# direct methods
.method constructor <init>(Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V
    .registers 5

    .line 150
    iput-object p1, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl$1;->this$0:Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl;

    iput-object p4, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl$1;->val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 6

    .line 154
    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$InputContentInfoCompatApi25Impl$1;->val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-static {p1}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->wrap(Ljava/lang/Object;)Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
