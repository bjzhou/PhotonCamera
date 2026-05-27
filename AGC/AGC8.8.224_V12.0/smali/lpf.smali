.class public final synthetic Llpf;
.super Ljava/lang/Object;

# interfaces
.implements Ljoj;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljot;)Ljava/lang/Object;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Ljot;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljng;

    sget-object v1, Llpc;->i:Llpc;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v0, Ljng;->a:Ljava/lang/String;

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Llpc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Llpc;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Llpc;->a:I

    iput-object v2, v4, Llpc;->b:Ljava/lang/String;

    iget-object v2, v0, Ljng;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Llpc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Llpc;->a:I

    const/4 v7, 0x4

    or-int/2addr v5, v7

    iput v5, v4, Llpc;->a:I

    iput-object v2, v4, Llpc;->d:Ljava/lang/String;

    iget-boolean v2, v0, Ljng;->f:Z

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v3, v1, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Llpc;

    iget v5, v4, Llpc;->a:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Llpc;->a:I

    iput-boolean v2, v4, Llpc;->g:Z

    iget-wide v4, v0, Ljng;->g:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Llpc;

    iget v3, v2, Llpc;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Llpc;->a:I

    iput-wide v4, v2, Llpc;->h:J

    iget-object v2, v0, Ljng;->b:[B

    const/4 v3, 0x2

    if-eqz v2, :cond_5

    invoke-static {v2}, Lnvt;->u([B)Lnvt;

    move-result-object v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Llpc;

    iget v5, v4, Llpc;->a:I

    or-int/2addr v5, v3

    iput v5, v4, Llpc;->a:I

    iput-object v2, v4, Llpc;->c:Lnvt;

    :cond_5
    iget-object v0, v0, Ljng;->d:[Ljnf;

    array-length v2, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1b

    aget-object v8, v0, v5

    iget-object v9, v8, Ljnf;->b:[Ljnk;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_17

    aget-object v12, v9, v11

    iget v13, v12, Ljnk;->g:I

    packed-switch v13, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized flag type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v13, Llpd;->e:Llpd;

    invoke-virtual {v13}, Lnws;->O()Lnwn;

    move-result-object v13

    iget-object v14, v12, Ljnk;->a:Ljava/lang/String;

    iget-object v15, v13, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_6
    iget-object v15, v13, Lnwn;->b:Lnws;

    check-cast v15, Llpd;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v15, Llpd;->a:I

    or-int/2addr v4, v6

    iput v4, v15, Llpd;->a:I

    iput-object v14, v15, Llpd;->d:Ljava/lang/String;

    iget v4, v12, Ljnk;->g:I

    const/4 v14, 0x5

    if-ne v4, v14, :cond_8

    iget-object v4, v12, Ljnk;->f:[B

    invoke-static {v4}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {v4}, Lnvt;->u([B)Lnvt;

    move-result-object v4

    iget-object v12, v13, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_7
    iget-object v12, v13, Lnwn;->b:Lnws;

    check-cast v12, Llpd;

    iput v14, v12, Llpd;->b:I

    iput-object v4, v12, Llpd;->c:Ljava/lang/Object;

    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Llpd;

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a bytes type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v4, Llpd;->e:Llpd;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v13, v12, Ljnk;->a:Ljava/lang/String;

    iget-object v14, v4, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_9
    iget-object v14, v4, Lnwn;->b:Lnws;

    check-cast v14, Llpd;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, Llpd;->a:I

    or-int/2addr v15, v6

    iput v15, v14, Llpd;->a:I

    iput-object v13, v14, Llpd;->d:Ljava/lang/String;

    iget v13, v12, Ljnk;->g:I

    if-ne v13, v7, :cond_b

    iget-object v12, v12, Ljnk;->e:Ljava/lang/String;

    invoke-static {v12}, Ljhp;->ab(Ljava/lang/Object;)V

    iget-object v13, v4, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_a
    iget-object v13, v4, Lnwn;->b:Lnws;

    check-cast v13, Llpd;

    iput v7, v13, Llpd;->b:I

    iput-object v12, v13, Llpd;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Llpd;

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a String type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget-object v4, Llpd;->e:Llpd;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v13, v12, Ljnk;->a:Ljava/lang/String;

    iget-object v14, v4, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_c
    iget-object v14, v4, Lnwn;->b:Lnws;

    move-object v15, v14

    check-cast v15, Llpd;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v15, Llpd;->a:I

    or-int/2addr v7, v6

    iput v7, v15, Llpd;->a:I

    iput-object v13, v15, Llpd;->d:Ljava/lang/String;

    iget v7, v12, Ljnk;->g:I

    const/4 v13, 0x3

    if-ne v7, v13, :cond_e

    iget-wide v6, v12, Ljnk;->d:D

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_d
    iget-object v12, v4, Lnwn;->b:Lnws;

    check-cast v12, Llpd;

    iput v13, v12, Llpd;->b:I

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v12, Llpd;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Llpd;

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a double type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v4, Llpd;->e:Llpd;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v6, v12, Ljnk;->a:Ljava/lang/String;

    iget-object v7, v4, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_f
    iget-object v7, v4, Lnwn;->b:Lnws;

    move-object v13, v7

    check-cast v13, Llpd;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v13, Llpd;->a:I

    const/4 v15, 0x1

    or-int/2addr v14, v15

    iput v14, v13, Llpd;->a:I

    iput-object v6, v13, Llpd;->d:Ljava/lang/String;

    iget v6, v12, Ljnk;->g:I

    if-ne v6, v3, :cond_11

    iget-boolean v6, v12, Ljnk;->c:Z

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_10
    iget-object v7, v4, Lnwn;->b:Lnws;

    check-cast v7, Llpd;

    iput v3, v7, Llpd;->b:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v7, Llpd;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Llpd;

    const/4 v7, 0x1

    goto :goto_2

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a boolean type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    sget-object v4, Llpd;->e:Llpd;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v6, v12, Ljnk;->a:Ljava/lang/String;

    iget-object v7, v4, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_12
    iget-object v7, v4, Lnwn;->b:Lnws;

    move-object v13, v7

    check-cast v13, Llpd;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v13, Llpd;->a:I

    const/4 v15, 0x1

    or-int/2addr v14, v15

    iput v14, v13, Llpd;->a:I

    iput-object v6, v13, Llpd;->d:Ljava/lang/String;

    iget v6, v12, Ljnk;->g:I

    if-ne v6, v15, :cond_16

    iget-wide v12, v12, Ljnk;->b:J

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_13
    iget-object v6, v4, Lnwn;->b:Lnws;

    check-cast v6, Llpd;

    const/4 v7, 0x1

    iput v7, v6, Llpd;->b:I

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v6, Llpd;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Llpd;

    :goto_2
    iget-object v6, v1, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_14
    iget-object v6, v1, Lnwn;->b:Lnws;

    check-cast v6, Llpc;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v6, Llpc;->e:Lnxa;

    invoke-interface {v12}, Lnxa;->c()Z

    move-result v13

    if-nez v13, :cond_15

    invoke-static {v12}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v12

    iput-object v12, v6, Llpc;->e:Lnxa;

    :cond_15
    iget-object v6, v6, Llpc;->e:Lnxa;

    invoke-interface {v6, v4}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    goto/16 :goto_1

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a long type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/4 v7, 0x1

    iget-object v4, v8, Ljnf;->c:[Ljava/lang/String;

    if-eqz v4, :cond_1a

    const/4 v6, 0x0

    :goto_3
    array-length v8, v4

    if-ge v6, v8, :cond_1a

    aget-object v8, v4, v6

    iget-object v9, v1, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_18
    iget-object v9, v1, Lnwn;->b:Lnws;

    check-cast v9, Llpc;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Llpc;->f:Lnxa;

    invoke-interface {v10}, Lnxa;->c()Z

    move-result v11

    if-nez v11, :cond_19

    invoke-static {v10}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v10

    iput-object v10, v9, Llpc;->f:Lnxa;

    :cond_19
    iget-object v9, v9, Llpc;->f:Lnxa;

    invoke-interface {v9, v8}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Llpc;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
