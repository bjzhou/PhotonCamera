.class public final Ltgs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltdy;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Ltdx;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ltdx;I)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p3, p0, Ltgs;->c:Ltdx;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Ltgs;->d:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ltgs;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p2, p0, Ltgs;->b:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ltdx;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Ltgs;->d:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ltgs;->b:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p2, p0, Ltgs;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Ltgs;->c:Ltdx;

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
.end method


# virtual methods
.method public final a(Ltdj;Lthm;)Ltdx;
    .locals 1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p2, Lthm;->a:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltgs;->c:Ltdx;

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

    :goto_3
    iget-object p2, p0, Ltgs;->b:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p2, p0, Ltgs;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget-object p2, p0, Ltgs;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ltgs;->c:Ltdx;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p1, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p2, p0, Ltgs;->b:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    if-eq p1, p2, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_15
    iget p1, p0, Ltgs;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iget-object p1, p2, Lthm;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    if-ne p1, p2, :cond_4

    nop

    goto/32 :goto_6

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, p0, Ltgs;->b:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    :goto_9
    const v0, 0x11

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ltgs;->c:Ltdx;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v5, p0, Ltgs;->b:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iget v0, p0, Ltgs;->d:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    return-object p0

    nop

    :goto_16
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_18
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v1, "]"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    const-string v2, ",adapter="

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Ltgs;->a:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    nop

    :goto_24
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Ltgs;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "+"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_2a
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Ltgs;->c:Ltdx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2e
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2f
    const-string v4, "Factory[type="

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method
