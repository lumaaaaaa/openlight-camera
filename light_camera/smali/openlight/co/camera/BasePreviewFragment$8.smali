.class synthetic Lopenlight/co/camera/BasePreviewFragment$8;
.super Ljava/lang/Object;
.source "BasePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/BasePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1228
    invoke-static {}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->values()[Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/BasePreviewFragment$8;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    :try_start_9
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment$8;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment$8;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment$8;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
