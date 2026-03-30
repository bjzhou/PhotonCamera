.class public final Licx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Licu;


# instance fields
.field private final a:Lidi;


# direct methods
.method public constructor <init>(Lidi;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Licx;->a:Lidi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lhhg;->W(Landroid/net/Uri;)J

    move-result-wide p1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lidb;->a:Lidb;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1c

    nop

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

    :goto_5
    invoke-virtual {p0, p1, p2}, Lidi;->a(J)Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const-string v1, "special_type_id"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    iget-object p0, p0, Licx;->a:Lidi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Lidb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lidb;->f()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Lidb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2}, Lidb;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    new-instance v0, Landroid/database/MatrixCursor;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    if-nez p1, :cond_3

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_1a
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    :goto_21
    goto/32 :goto_15

    nop

    nop
.end method
