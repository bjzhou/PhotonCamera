.class public final Lfnl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfoi;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Lfnl;->a:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lfom;)Lfoh;
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v2, p0, v0}, Lfnx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    const-class v1, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const-class p0, Landroid/net/Uri;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lfnn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    const-class p0, Landroid/net/Uri;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    new-instance p1, Lfnk;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-virtual {p1, p0, v1}, Lfom;->a(Ljava/lang/Class;Ljava/lang/Class;)Lfoh;

    move-result-object p0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9
    const-class v1, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, v0}, Lfnx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    :goto_b
    const-class v1, Ljava/io/InputStream;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v2, Lfnx;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-direct {p0, p1, v0}, Lfnx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Lfnx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-virtual {p1, p0, v1}, Lfom;->a(Ljava/lang/Class;Ljava/lang/Class;)Lfoh;

    move-result-object p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1, v1}, Lfnk;-><init>(I)V

    goto/32 :goto_12

    nop

    nop

    :goto_16
    return-object v2

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lfnx;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    :goto_1b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p1, v0}, Lfnk;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v2

    nop

    nop

    :goto_1f
    goto/32 :goto_28

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, p0, v1}, Lfom;->a(Ljava/lang/Class;Ljava/lang/Class;)Lfoh;

    move-result-object p0

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

    :goto_23
    invoke-direct {v2, p0, v0}, Lfnx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p1, Lfnk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2d

    nop

    :goto_26
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-ne p0, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    const-class p0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_29
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2a
    const v1, 0x7

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2b
    iget p0, p0, Lfnl;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_37

    nop

    nop

    :goto_2e
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2f
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0}, Lfnn;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p0, Lfnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v2, p0, v0}, Lfnx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v2, Lfnx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne p0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_37
    goto/32 :goto_26

    nop

    nop
.end method
