.class abstract Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroid/support/v4/text/TextDirectionHeuristicCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V
    .registers 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .registers 5

    .line 140
    iget-object v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result p1

    packed-switch p1, :pswitch_data_12

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result p0

    return p0

    :pswitch_e
    const/4 p0, 0x0

    return p0

    :pswitch_10
    const/4 p0, 0x1

    return p0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .registers 5

    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1b

    .line 133
    iget-object v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->mAlgorithm:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;

    if-nez v0, :cond_16

    .line 134
    invoke-virtual {p0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->defaultIsRtl()Z

    move-result p0

    return p0

    .line 136
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->doCheck(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0

    .line 131
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public isRtl([CII)Z
    .registers 4

    .line 125
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method
