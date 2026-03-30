.class public final synthetic Lezf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lezo;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lezf;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

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
    iput-object p2, p0, Lezf;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lezf;->c:I

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

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lezg;->a:Ljava/util/Map;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lezg;->j()V

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lezg;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lezf;->c:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lezf;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    const v0, 0xe

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lezf;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_d
    sget-object p0, Lezg;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_23

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lezf;->a:Ljava/lang/String;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xd

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Lezg;->j()V

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_19
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p1, Lezg;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lezb;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lezf;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_1e
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    check-cast p1, Ljava/lang/Throwable;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
