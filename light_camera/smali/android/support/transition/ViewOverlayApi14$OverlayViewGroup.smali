.class Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlayApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ViewOverlayApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup$TouchInterceptor;
    }
.end annotation


# static fields
.field static sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Landroid/view/ViewGroup;

.field mRequestingView:Landroid/view/View;

.field mViewOverlay:Landroid/support/transition/ViewOverlayApi14;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 135
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlayApi14;)V
    .registers 5

    .line 159
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 160
    iput-object p2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    .line 161
    iput-object p3, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 162
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->setRight(I)V

    .line 163
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->setBottom(I)V

    .line 164
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    iput-object p4, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Landroid/support/transition/ViewOverlayApi14;

    return-void
.end method

.method private getOffset([I)V
    .registers 6

    const/4 v0, 0x2

    .line 283
    new-array v1, v0, [I

    .line 284
    new-array v0, v0, [I

    .line 285
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 286
    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 287
    aget v2, v0, p0

    aget v3, v1, p0

    sub-int/2addr v2, v3

    aput v2, p1, p0

    const/4 p0, 0x1

    .line 288
    aget v0, v0, p0

    aget v1, v1, p0

    sub-int/2addr v0, v1

    aput v0, p1, p0

    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 175
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 179
    :cond_b
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 181
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 183
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_22
    return-void
.end method

.method public add(Landroid/view/View;)V
    .registers 8

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 203
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eq v0, v2, :cond_3d

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 204
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x2

    .line 207
    new-array v3, v2, [I

    .line 208
    new-array v2, v2, [I

    .line 209
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 210
    iget-object v4, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    .line 211
    aget v5, v3, v4

    aget v4, v2, v4

    sub-int/2addr v5, v4

    invoke-static {p1, v5}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 212
    aget v3, v3, v1

    aget v2, v2, v1

    sub-int/2addr v3, v2

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 214
    :cond_3d
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 221
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    :cond_49
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 235
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->removeAllViews()V

    .line 236
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 237
    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_c
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const/4 v0, 0x2

    .line 253
    new-array v1, v0, [I

    .line 254
    new-array v0, v0, [I

    .line 255
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 256
    iget-object v2, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 257
    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    aget v1, v1, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    .line 260
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 261
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 262
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_3d

    move v0, v2

    goto :goto_43

    :cond_3d
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_43
    if-ge v2, v0, :cond_53

    .line 264
    iget-object v1, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_53
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    .line 292
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/4 v1, 0x2

    .line 298
    new-array v1, v1, [I

    .line 299
    invoke-direct {p0, v1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    const/4 v2, 0x0

    .line 304
    aget v2, v1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 305
    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    :cond_22
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 7

    .line 331
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    .line 332
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 333
    iget-object v1, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_29

    .line 334
    aput v0, p1, v0

    .line 335
    aput v0, p1, v2

    const/4 v1, 0x2

    .line 336
    new-array v1, v1, [I

    .line 337
    invoke-direct {p0, v1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 338
    aget v0, v1, v0

    aget v1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 339
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0

    .line 342
    :cond_29
    invoke-virtual {p0, p2}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method protected invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 8
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_34

    sget-object v0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    .line 316
    :try_start_b
    new-array v1, v0, [I

    .line 317
    invoke-direct {p0, v1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 318
    sget-object v1, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    aput-object p3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2a} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_2a} :catch_2b

    goto :goto_34

    :catch_2b
    move-exception p0

    .line 322
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_34

    :catch_30
    move-exception p0

    .line 320
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method isEmpty()Z
    .registers 2

    .line 242
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 188
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 189
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 191
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_14
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .registers 2

    .line 228
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 229
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 230
    iget-object p1, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
