.class public Lcom/bumptech/glide/load/model/ModelCache;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0xfa


# instance fields
.field private final cache:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache<",
            "Lcom/bumptech/glide/load/model/ModelCache$ModelKey<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xfa

    .line 22
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/ModelCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/model/ModelCache$1;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/model/ModelCache$1;-><init>(Lcom/bumptech/glide/load/model/ModelCache;I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ModelCache;->cache:Lcom/bumptech/glide/util/LruCache;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 44
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-result-object p1

    .line 45
    iget-object p0, p0, Lcom/bumptech/glide/load/model/ModelCache;->cache:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 46
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->release()V

    return-object p0
.end method

.method public put(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 59
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/model/ModelCache$ModelKey;->get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;

    move-result-object p1

    .line 60
    iget-object p0, p0, Lcom/bumptech/glide/load/model/ModelCache;->cache:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {p0, p1, p4}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
