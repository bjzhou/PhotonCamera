.class public final Lovp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loia;


# instance fields
.field final a:Lpic;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lpic;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Lovp;->a:Lpic;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lovp;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lovp;->a:Lpic;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p1}, Loha;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lpic;->t(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lovp;->a:Lpic;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    :goto_d
    new-instance v0, Loha;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lpic;->s(Ljava/lang/Exception;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lovp;->a:Lpic;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lpic;->s(Ljava/lang/Exception;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lovp;->b:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Lpic;->t(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Loha;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1b
    const/4 p1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_1f
    const/16 v1, 0xfa2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Lpic;->t(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    :goto_21
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p1, 0x1

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

    :goto_26
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lovp;->a:Lpic;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, p1}, Loha;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2e
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->f:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v1, 0xfa1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->f:I

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

    nop

    :goto_31
    iget-object p0, p0, Lovp;->a:Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
