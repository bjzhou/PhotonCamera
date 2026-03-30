.class public final synthetic Lqve;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqvd;


# instance fields
.field public final synthetic a:Lqvg;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lqvg;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqve;->a:Lqvg;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lqve;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0, p0}, Lowf;->d(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqve;->a:Lqvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroid/content/Context;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    sget-object v1, Lovy;->a:Lowf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v0, Lqvg;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lqve;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
