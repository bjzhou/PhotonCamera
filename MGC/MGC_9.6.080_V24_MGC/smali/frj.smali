.class public final Lfrj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfjo;

.field public static final b:Lfjo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    sput-object v1, Lfrj;->a:Lfjo;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lfjo;->a:Lfjn;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    sget-object v2, Lfjo;->a:Lfjn;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v3, v0, v2}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lfjc;->c:Lfjc;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const-string v3, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    new-instance v1, Lfjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v3, v0, v2}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v1, Lfrj;->b:Lfjo;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lfjo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    const-string v3, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop
.end method
