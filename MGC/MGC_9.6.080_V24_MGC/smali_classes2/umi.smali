.class public final Lumi;
.super Luan;
.source "PG"

# interfaces
.implements Lujq;
.implements Luao;


# instance fields
.field public final a:Lujq;

.field public final b:Luad;

.field public final c:I

.field private d:Luad;

.field private e:Ltzy;


# direct methods
.method public constructor <init>(Lujq;Luad;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lumi;->a:Lujq;

    nop

    nop

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
    invoke-interface {p2, p1, v0}, Luad;->fold(Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lumi;->b:Luad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1}, Luan;-><init>(Ltzy;Luad;)V

    goto/32 :goto_0

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput p1, p0, Lumi;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    sget-object v0, Lnht;->h:Lnht;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lumf;->a:Lumf;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    sget-object v1, Luae;->a:Luae;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const-string v1, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p2}, Ltzy;->r()Luad;

    move-result-object v2

    nop

    invoke-static {v2}, Lucu;->r(Luad;)V

    iget-object v3, p0, Lumi;->d:Luad;

    nop

    nop

    nop

    if-eq v3, v2, :cond_2

    nop

    nop

    instance-of v4, v3, Lumc;

    nop

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    new-instance v3, Lhjo;

    nop

    nop

    const/16 v4, 0x9

    nop

    nop

    invoke-direct {v3, p0, v4}, Lhjo;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v1, v3}, Luad;->fold(Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    nop

    nop

    nop

    iget v3, p0, Lumi;->c:I

    nop

    nop

    nop

    nop

    if-ne v1, v3, :cond_0

    nop

    nop

    iput-object v2, p0, Lumi;->d:Luad;

    nop

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    iget-object v1, p0, Lumi;->b:Luad;

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n\t\tbut emission happened in "

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    :cond_1
    check-cast v3, Lumc;

    nop

    nop

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v3, Lumc;->a:Ljava/lang/Throwable;

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but then emission attempt of value \'"

    nop

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    nop

    sget-object p1, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->neS:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    invoke-static {p1}, Luch;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_2
    :goto_1
    iput-object p2, p0, Lumi;->e:Ltzy;

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lumk;->a:Lubp;

    nop

    iget-object v1, p0, Lumi;->a:Lujq;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, p1, p0}, Lubp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lumi;->e:Ltzy;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v0, 0x15

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    sget-object p0, Luag;->a:Luag;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1, p2}, Lumc;-><init>(Ljava/lang/Throwable;Luad;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p1, p0, :cond_4

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    :goto_b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    return-object p1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lumc;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    :goto_12
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    const-string v0, "Flow invariant is violated:\n\t\tFlow was collected in "

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lumi;->d:Luad;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p1, p0, :cond_6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    invoke-interface {p2}, Ltzy;->r()Luad;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final bW()Luao;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p0, Luao;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    iget-object p0, p0, Lumi;->e:Ltzy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_7
    check-cast p0, Luao;

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

    nop
.end method

.method protected final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v0, v2}, Lumc;-><init>(Ljava/lang/Throwable;Luad;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ltxx;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lumi;->e:Ltzy;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Ltzy;->t(Ljava/lang/Object;)V

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    sget-object p0, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    iput-object v1, p0, Lumi;->d:Luad;

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_11
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Luan;->r()Luad;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lumc;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop
.end method

.method public final bY()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-super {p0}, Luan;->e()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final r()Luad;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lumi;->d:Luad;

    nop

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

    :goto_1
    sget-object p0, Luae;->a:Luae;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop
.end method
