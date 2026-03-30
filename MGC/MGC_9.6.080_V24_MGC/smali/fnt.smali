.class public final Lfnt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfoi;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfnt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lfnt;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    new-instance p1, Lfsh;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-direct {p1, p2}, Lfsh;-><init>([B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lfnt;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfnt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lfom;)Lfoh;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfnt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const-class v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    iget v0, p0, Lfnt;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v1}, Lfol;-><init>(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0, v1}, Lfom;->a(Ljava/lang/Class;Ljava/lang/Class;)Lfoh;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-direct {v3, p0, p1, v2}, Lfns;-><init>(Landroid/content/Context;Lfoh;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-class v1, Ljava/io/InputStream;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v3, Lfns;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Landroid/content/Context;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0, v1}, Lfom;->a(Ljava/lang/Class;Ljava/lang/Class;)Lfoh;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    new-instance p0, Lfol;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    return-object v3

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p1

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-class v1, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    invoke-direct {p1, p0, v0}, Lfnx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_21
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-class v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p1, Lfnx;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v3, Lfns;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_23

    nop

    nop

    :goto_27
    invoke-direct {v3, p0, p1, v2}, Lfns;-><init>(Landroid/content/Context;Lfoh;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lfnt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
