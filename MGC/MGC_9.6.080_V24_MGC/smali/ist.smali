.class final List;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Linr;

.field final synthetic b:J

.field final synthetic c:Lisu;

.field final synthetic d:Lndt;

.field final synthetic e:Lnar;


# direct methods
.method public constructor <init>(Lisu;Lndt;Linr;JLnar;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, List;->d:Lndt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, List;->a:Linr;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p6, p0, List;->e:Lnar;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, List;->c:Lisu;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-wide p4, p0, List;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, List;->d:Lndt;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lndt;->close()V

    goto/32 :goto_e

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

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v2, p1}, Lisu;->g(JLjava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iget-wide v1, p0, List;->b:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

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

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    iget-object v0, p0, List;->c:Lisu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_4b

    nop

    nop

    :goto_0
    iget-object v1, p0, List;->e:Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_36

    nop

    nop

    :goto_2
    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v1, Lisu;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, List;->c:Lisu;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6
    invoke-virtual {p1, v1, v2, v0}, Lisu;->g(JLjava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    check-cast v1, Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, List;->d:Lndt;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    check-cast v1, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v1, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lndt;->close()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, List;->a:Linr;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_14
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v1, Lisu;->a:Llxa;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p1, Lqqd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lqqd;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v1, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1d
    iget-object v1, p0, List;->a:Linr;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Llxa;->ag()Lmjn;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, List;->e:Lnar;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, List;->c:Lisu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_21
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, List;->c:Lisu;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v1, v2, v0}, Lisu;->g(JLjava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p1, Lisv;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_28
    iget-wide v1, p0, List;->b:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v2, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2b
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()V

    :goto_2d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v2, v3}, Lmjn;->e(J)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    iput-boolean v0, v1, Lisu;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    array-length v2, v2

    nop

    nop

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

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_33
    check-cast v1, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_34
    const/16 v1, 0x751

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_35
    iget-object v2, p1, Lqqd;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, List;->c:Lisu;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_37
    iget-wide v2, p0, List;->b:J

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

    :goto_38
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, List;->c:Lisu;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3c
    or-int/2addr v0, v2

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3d
    const/4 v0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-wide v1, p0, List;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v2, Linr;->b:Linr;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eq v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v2, [B

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sget-object p1, Lisv;->b:Lsdb;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_46
    iget-boolean v2, v1, Lisu;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_48
    const-string v2, "Error encoding the image: %s"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

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

    :goto_4a
    rem-int v0, v0, v1

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

    nop

    :goto_4b
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4c
    check-cast v1, Lrss;

    nop

    nop

    goto/32 :goto_30

    nop

    nop
.end method
