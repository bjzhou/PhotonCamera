.class public Lyn;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:F

.field C:I

.field D:F

.field public final E:[I

.field public F:F

.field public G:Z

.field public H:Z

.field public I:I

.field public J:I

.field public final K:Lym;

.field public final L:Lym;

.field public final M:Lym;

.field public final N:Lym;

.field public final O:Lym;

.field final P:Lym;

.field final Q:Lym;

.field public final R:Lym;

.field public final S:[Lym;

.field protected final T:Ljava/util/ArrayList;

.field public final U:[Z

.field public V:Lyn;

.field W:I

.field public X:I

.field public Y:F

.field public Z:I

.field private a:Z

.field public aa:I

.field public ab:I

.field public ac:I

.field public ad:I

.field public ae:I

.field public af:F

.field public ag:F

.field public ah:Ljava/lang/Object;

.field public ai:I

.field public aj:Ljava/lang/String;

.field public ak:I

.field public al:I

.field public final am:[F

.field public final an:[Lyn;

.field public final ao:[Lyn;

.field public ap:I

.field public aq:I

.field public final ar:[I

.field private b:Z

.field public e:Z

.field public f:Lyw;

.field public g:Lyw;

.field public h:Lze;

.field public i:Lzg;

.field public final j:[Z

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public final v:[I

.field public w:I

.field public x:I

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyn;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lyn;->h:Lze;

    iput-object v1, p0, Lyn;->i:Lzg;

    const/4 v2, 0x2

    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lyn;->j:[Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lyn;->a:Z

    const/4 v4, -0x1

    iput v4, p0, Lyn;->k:I

    iput v4, p0, Lyn;->l:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-boolean v0, p0, Lyn;->b:Z

    iput-boolean v0, p0, Lyn;->n:Z

    iput-boolean v0, p0, Lyn;->o:Z

    iput-boolean v0, p0, Lyn;->p:Z

    iput v4, p0, Lyn;->q:I

    iput v4, p0, Lyn;->r:I

    iput v0, p0, Lyn;->s:I

    iput v0, p0, Lyn;->t:I

    iput v0, p0, Lyn;->u:I

    new-array v5, v2, [I

    iput-object v5, p0, Lyn;->v:[I

    iput v0, p0, Lyn;->w:I

    iput v0, p0, Lyn;->x:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lyn;->y:F

    iput v0, p0, Lyn;->z:I

    iput v0, p0, Lyn;->A:I

    iput v5, p0, Lyn;->B:F

    iput v4, p0, Lyn;->C:I

    iput v5, p0, Lyn;->D:F

    const v5, 0x7fffffff

    filled-new-array {v5, v5}, [I

    move-result-object v5

    iput-object v5, p0, Lyn;->E:[I

    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, p0, Lyn;->F:F

    iput-boolean v0, p0, Lyn;->G:Z

    iput-boolean v0, p0, Lyn;->H:Z

    iput v0, p0, Lyn;->I:I

    iput v0, p0, Lyn;->J:I

    new-instance v5, Lym;

    sget-object v6, Lyl;->b:Lyl;

    invoke-direct {v5, p0, v6}, Lym;-><init>(Lyn;Lyl;)V

    iput-object v5, p0, Lyn;->K:Lym;

    new-instance v6, Lym;

    sget-object v7, Lyl;->c:Lyl;

    invoke-direct {v6, p0, v7}, Lym;-><init>(Lyn;Lyl;)V

    iput-object v6, p0, Lyn;->L:Lym;

    new-instance v7, Lym;

    sget-object v8, Lyl;->d:Lyl;

    invoke-direct {v7, p0, v8}, Lym;-><init>(Lyn;Lyl;)V

    iput-object v7, p0, Lyn;->M:Lym;

    new-instance v8, Lym;

    sget-object v9, Lyl;->e:Lyl;

    invoke-direct {v8, p0, v9}, Lym;-><init>(Lyn;Lyl;)V

    iput-object v8, p0, Lyn;->N:Lym;

    new-instance v9, Lym;

    sget-object v10, Lyl;->f:Lyl;

    invoke-direct {v9, p0, v10}, Lym;-><init>(Lyn;Lyl;)V

    iput-object v9, p0, Lyn;->O:Lym;

    new-instance v10, Lym;

    sget-object v11, Lyl;->h:Lyl;

    invoke-direct {v10, p0, v11}, Lym;-><init>(Lyn;Lyl;)V

    iput-object v10, p0, Lyn;->P:Lym;

    new-instance v11, Lym;

    sget-object v12, Lyl;->i:Lyl;

    invoke-direct {v11, p0, v12}, Lym;-><init>(Lyn;Lyl;)V

    iput-object v11, p0, Lyn;->Q:Lym;

    new-instance v12, Lym;

    sget-object v13, Lyl;->g:Lyl;

    invoke-direct {v12, p0, v13}, Lym;-><init>(Lyn;Lyl;)V

    iput-object v12, p0, Lyn;->R:Lym;

    const/4 v13, 0x6

    new-array v13, v13, [Lym;

    aput-object v5, v13, v0

    aput-object v7, v13, v3

    aput-object v6, v13, v2

    const/4 v14, 0x3

    aput-object v8, v13, v14

    const/4 v14, 0x4

    aput-object v9, v13, v14

    const/4 v14, 0x5

    aput-object v12, v13, v14

    iput-object v13, p0, Lyn;->S:[Lym;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, p0, Lyn;->T:Ljava/util/ArrayList;

    new-array v14, v2, [Z

    iput-object v14, p0, Lyn;->U:[Z

    filled-new-array {v3, v3}, [I

    move-result-object v14

    iput-object v14, p0, Lyn;->ar:[I

    iput-object v1, p0, Lyn;->V:Lyn;

    iput v0, p0, Lyn;->W:I

    iput v0, p0, Lyn;->X:I

    const/4 v14, 0x0

    iput v14, p0, Lyn;->Y:F

    iput v4, p0, Lyn;->Z:I

    iput v0, p0, Lyn;->aa:I

    iput v0, p0, Lyn;->ab:I

    iput v0, p0, Lyn;->ac:I

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, p0, Lyn;->af:F

    iput v14, p0, Lyn;->ag:F

    iput v0, p0, Lyn;->ai:I

    iput-object v1, p0, Lyn;->aj:Ljava/lang/String;

    iput v0, p0, Lyn;->ak:I

    iput v0, p0, Lyn;->al:I

    new-array v14, v2, [F

    fill-array-data v14, :array_1

    iput-object v14, p0, Lyn;->am:[F

    new-array v14, v2, [Lyn;

    aput-object v1, v14, v0

    aput-object v1, v14, v3

    iput-object v14, p0, Lyn;->an:[Lyn;

    new-array v2, v2, [Lyn;

    aput-object v1, v2, v0

    aput-object v1, v2, v3

    iput-object v2, p0, Lyn;->ao:[Lyn;

    iput v4, p0, Lyn;->ap:I

    iput v4, p0, Lyn;->aq:I

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private static final U(Ljava/lang/StringBuilder;Ljava/lang/String;Lym;)V
    .locals 2

    iget-object v0, p2, Lym;->f:Lym;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : [ \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lym;->f:Lym;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lym;->h:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    iget p1, p2, Lym;->g:I

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lym;->g:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p2, Lym;->h:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lym;->h:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, " ] ,\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final V(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final W(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final X(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFI)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :  {\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FIXED"

    packed-switch p8, :pswitch_data_0

    const-string v0, "null"

    goto :goto_0

    :pswitch_0
    const-string v0, "MATCH_PARENT"

    goto :goto_0

    :pswitch_1
    const-string v0, "MATCH_CONSTRAINT"

    goto :goto_0

    :pswitch_2
    const-string v0, "WRAP_CONTENT"

    goto :goto_0

    :pswitch_3
    move-object v0, p1

    :goto_0
    if-eqz p8, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "      behavior :   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "      size"

    const/4 p8, 0x0

    invoke-static {p0, p1, p2, p8}, Lyn;->W(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p1, "      min"

    invoke-static {p0, p1, p3, p8}, Lyn;->W(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p1, "      max"

    const p2, 0x7fffffff

    invoke-static {p0, p1, p4, p2}, Lyn;->W(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p1, "      matchMin"

    invoke-static {p0, p1, p5, p8}, Lyn;->W(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p1, "      matchDef"

    invoke-static {p0, p1, p6, p8}, Lyn;->W(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p1, "      matchPercent"

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p7, p2}, Lyn;->V(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string p1, "    },\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(I)Z
    .locals 3

    iget-object v0, p0, Lyn;->S:[Lym;

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    iget-object v2, v1, Lym;->f:Lym;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lym;->f:Lym;

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    iget-object v0, p1, Lym;->f:Lym;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lym;->f:Lym;

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final c(Lyc;ZZZZLyh;Lyh;IZLym;Lym;IIIIFZZZZZIIIIFZ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v9, p17

    move/from16 v8, p20

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    invoke-virtual {v10, v13}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v7

    invoke-virtual {v10, v14}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v6

    iget-object v5, v13, Lym;->f:Lym;

    invoke-virtual {v10, v5}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v5

    iget-object v12, v14, Lym;->f:Lym;

    invoke-virtual {v10, v12}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v12

    sget-object v2, Lyc;->b:Lyd;

    if-eqz v2, :cond_0

    move-object/from16 v22, v12

    iget-wide v11, v2, Lyd;->y:J

    const-wide/16 v16, 0x1

    add-long v11, v11, v16

    iput-wide v11, v2, Lyd;->y:J

    goto :goto_0

    :cond_0
    move-object/from16 v22, v12

    :goto_0
    invoke-virtual/range {p10 .. p10}, Lym;->h()Z

    move-result v2

    invoke-virtual/range {p11 .. p11}, Lym;->h()Z

    move-result v11

    iget-object v12, v0, Lyn;->R:Lym;

    invoke-virtual {v12}, Lym;->h()Z

    move-result v12

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v11, :cond_2

    add-int/lit8 v16, v16, 0x1

    :cond_2
    if-eqz v12, :cond_3

    add-int/lit8 v16, v16, 0x1

    :cond_3
    move/from16 v24, v16

    if-ne v8, v9, :cond_4

    const/4 v8, 0x3

    goto :goto_2

    :cond_4
    move/from16 v8, p22

    :goto_2
    add-int/lit8 v16, p8, -0x1

    sget-object v17, Lyl;->a:Lyl;

    if-eqz p8, :cond_66

    const/4 v14, 0x4

    packed-switch v16, :pswitch_data_0

    const/16 v16, 0x0

    goto :goto_3

    :pswitch_0
    if-eq v8, v14, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    :pswitch_1
    const/16 v16, 0x0

    :goto_3
    iget v14, v0, Lyn;->k:I

    const/4 v13, -0x1

    if-eq v14, v13, :cond_6

    if-eqz p2, :cond_6

    iput v13, v0, Lyn;->k:I

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    move/from16 v14, p13

    :goto_4
    move/from16 p13, v14

    iget v14, v0, Lyn;->l:I

    if-eq v14, v13, :cond_7

    if-nez p2, :cond_7

    iput v13, v0, Lyn;->l:I

    const/16 v16, 0x0

    goto :goto_5

    :cond_7
    move/from16 v14, p13

    :goto_5
    iget v13, v0, Lyn;->ai:I

    move/from16 p13, v14

    const/16 v14, 0x8

    if-ne v13, v14, :cond_8

    const/16 v17, 0x0

    goto :goto_6

    :cond_8
    const/16 v17, 0x1

    :goto_6
    if-ne v13, v14, :cond_9

    const/4 v13, 0x0

    goto :goto_7

    :cond_9
    move/from16 v13, p13

    :goto_7
    if-eqz p27, :cond_c

    if-nez v2, :cond_a

    if-nez v11, :cond_a

    if-nez v12, :cond_a

    move/from16 v14, p12

    invoke-virtual {v10, v7, v14}, Lyc;->f(Lyh;I)V

    move/from16 v26, v12

    goto :goto_8

    :cond_a
    if-eqz v2, :cond_b

    if-nez v11, :cond_b

    invoke-virtual/range {p10 .. p10}, Lym;->b()I

    move-result v14

    move/from16 v26, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v7, v5, v14, v12}, Lyc;->m(Lyh;Lyh;II)V

    goto :goto_8

    :cond_b
    move/from16 v26, v12

    goto :goto_8

    :cond_c
    move/from16 v26, v12

    :goto_8
    and-int v12, v17, v16

    if-nez v12, :cond_10

    if-eqz p9, :cond_f

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v10, v6, v7, v14, v13}, Lyc;->m(Lyh;Lyh;II)V

    if-lez v15, :cond_d

    const/16 v14, 0x8

    invoke-virtual {v10, v6, v7, v15, v14}, Lyc;->g(Lyh;Lyh;II)V

    goto :goto_9

    :cond_d
    const/16 v14, 0x8

    :goto_9
    const v13, 0x7fffffff

    if-ge v1, v13, :cond_e

    invoke-virtual {v10, v6, v7, v1, v14}, Lyc;->h(Lyh;Lyh;II)V

    const/4 v1, 0x3

    goto :goto_a

    :cond_e
    const/4 v1, 0x3

    goto :goto_a

    :cond_f
    const/4 v1, 0x3

    const/16 v14, 0x8

    invoke-virtual {v10, v6, v7, v13, v14}, Lyc;->m(Lyh;Lyh;II)V

    :goto_a
    move-object/from16 v13, p10

    move/from16 v16, v12

    move/from16 v14, v24

    :goto_b
    move/from16 v12, p5

    goto/16 :goto_11

    :cond_10
    const/4 v1, 0x3

    move/from16 v14, v24

    const/4 v1, 0x2

    if-eq v14, v1, :cond_13

    if-nez v9, :cond_13

    const/4 v1, 0x1

    if-eq v8, v1, :cond_11

    if-nez v8, :cond_13

    const/4 v8, 0x0

    :cond_11
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_12

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_12
    const/16 v12, 0x8

    invoke-virtual {v10, v6, v7, v1, v12}, Lyc;->m(Lyh;Lyh;II)V

    move/from16 v12, p5

    move-object/from16 v13, p10

    const/16 v16, 0x0

    goto/16 :goto_11

    :cond_13
    const/4 v1, -0x2

    if-ne v3, v1, :cond_14

    move v3, v13

    :cond_14
    if-ne v4, v1, :cond_15

    move v4, v13

    :cond_15
    if-lez v13, :cond_16

    const/4 v1, 0x1

    if-eq v8, v1, :cond_16

    const/4 v13, 0x0

    :cond_16
    if-lez v3, :cond_17

    const/16 v1, 0x8

    invoke-virtual {v10, v6, v7, v3, v1}, Lyc;->g(Lyh;Lyh;II)V

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_17
    if-lez v4, :cond_19

    if-eqz p3, :cond_18

    const/4 v1, 0x1

    if-ne v8, v1, :cond_18

    const/4 v1, 0x1

    goto :goto_c

    :cond_18
    const/16 v1, 0x8

    invoke-virtual {v10, v6, v7, v4, v1}, Lyc;->h(Lyh;Lyh;II)V

    move v1, v8

    :goto_c
    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_d

    :cond_19
    move v1, v8

    :goto_d
    move/from16 p15, v1

    const/4 v1, 0x1

    if-ne v8, v1, :cond_1c

    if-eqz p3, :cond_1a

    const/16 v1, 0x8

    invoke-virtual {v10, v6, v7, v13, v1}, Lyc;->m(Lyh;Lyh;II)V

    goto :goto_e

    :cond_1a
    const/16 v1, 0x8

    if-eqz p19, :cond_1b

    const/4 v8, 0x5

    invoke-virtual {v10, v6, v7, v13, v8}, Lyc;->m(Lyh;Lyh;II)V

    invoke-virtual {v10, v6, v7, v13, v1}, Lyc;->h(Lyh;Lyh;II)V

    goto :goto_e

    :cond_1b
    const/4 v8, 0x5

    invoke-virtual {v10, v6, v7, v13, v8}, Lyc;->m(Lyh;Lyh;II)V

    invoke-virtual {v10, v6, v7, v13, v1}, Lyc;->h(Lyh;Lyh;II)V

    :goto_e
    move-object/from16 v13, p10

    move/from16 v8, p15

    move/from16 v16, v12

    goto :goto_b

    :cond_1c
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1f

    move-object/from16 v13, p10

    const/4 v1, -0x1

    iget-object v8, v13, Lym;->e:Lyl;

    sget-object v12, Lyl;->c:Lyl;

    if-eq v8, v12, :cond_1e

    sget-object v12, Lyl;->e:Lyl;

    if-ne v8, v12, :cond_1d

    goto :goto_f

    :cond_1d
    iget-object v8, v0, Lyn;->V:Lyn;

    sget-object v12, Lyl;->b:Lyl;

    invoke-virtual {v8, v12}, Lyn;->m(Lyl;)Lym;

    move-result-object v8

    invoke-virtual {v10, v8}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v8

    iget-object v12, v0, Lyn;->V:Lyn;

    sget-object v1, Lyl;->d:Lyl;

    invoke-virtual {v12, v1}, Lyn;->m(Lyl;)Lym;

    move-result-object v1

    invoke-virtual {v10, v1}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v1

    move-object/from16 v19, v1

    move-object/from16 v20, v8

    goto :goto_10

    :cond_1e
    :goto_f
    iget-object v1, v0, Lyn;->V:Lyn;

    sget-object v8, Lyl;->c:Lyl;

    invoke-virtual {v1, v8}, Lyn;->m(Lyl;)Lym;

    move-result-object v1

    invoke-virtual {v10, v1}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v1

    iget-object v8, v0, Lyn;->V:Lyn;

    sget-object v12, Lyl;->e:Lyl;

    invoke-virtual {v8, v12}, Lyn;->m(Lyl;)Lym;

    move-result-object v8

    invoke-virtual {v10, v8}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v8

    move-object/from16 v20, v1

    move-object/from16 v19, v8

    :goto_10
    invoke-virtual/range {p1 .. p1}, Lyc;->a()Lyb;

    move-result-object v1

    move-object/from16 v16, v1

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v21, p26

    invoke-virtual/range {v16 .. v21}, Lyb;->g(Lyh;Lyh;Lyh;Lyh;F)V

    invoke-virtual {v10, v1}, Lyc;->e(Lyb;)V

    xor-int/lit8 v12, p3, 0x1

    move/from16 v8, p15

    move/from16 v16, v12

    move/from16 v12, p5

    goto :goto_11

    :cond_1f
    move-object/from16 v13, p10

    move/from16 v8, p15

    move/from16 v16, v12

    const/4 v12, 0x1

    :goto_11
    if-eqz p27, :cond_60

    if-eqz p19, :cond_20

    move-object/from16 v5, p6

    move-object/from16 v4, p7

    move-object v3, v6

    move-object v2, v7

    move/from16 p5, v12

    const/4 v1, 0x3

    const/4 v6, 0x1

    goto/16 :goto_34

    :cond_20
    if-nez v2, :cond_21

    if-nez v11, :cond_21

    if-nez v26, :cond_21

    move/from16 v20, p3

    move-object v3, v6

    move/from16 p5, v12

    move-object/from16 v14, v22

    const/4 v1, 0x5

    goto/16 :goto_32

    :cond_21
    if-eqz v2, :cond_23

    if-nez v11, :cond_23

    iget-object v1, v13, Lym;->f:Lym;

    iget-object v1, v1, Lym;->d:Lyn;

    if-eqz p3, :cond_22

    instance-of v1, v1, Lyj;

    if-eqz v1, :cond_22

    move/from16 v20, p3

    move-object v3, v6

    move/from16 p5, v12

    move-object/from16 v14, v22

    const/16 v1, 0x8

    goto/16 :goto_32

    :cond_22
    move/from16 v20, p3

    move-object v3, v6

    move/from16 p5, v12

    move-object/from16 v14, v22

    const/4 v1, 0x5

    goto/16 :goto_32

    :cond_23
    if-nez v2, :cond_25

    if-eqz v11, :cond_25

    invoke-virtual/range {p11 .. p11}, Lym;->b()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v14, v22

    const/16 v2, 0x8

    invoke-virtual {v10, v6, v14, v1, v2}, Lyc;->m(Lyh;Lyh;II)V

    if-eqz p3, :cond_24

    move-object/from16 v2, p6

    const/4 v1, 0x0

    const/4 v3, 0x5

    invoke-virtual {v10, v7, v2, v1, v3}, Lyc;->g(Lyh;Lyh;II)V

    goto :goto_12

    :cond_24
    const/4 v1, 0x0

    :goto_12
    move/from16 v20, p3

    move-object v3, v6

    move/from16 p5, v12

    const/4 v1, 0x5

    goto/16 :goto_32

    :cond_25
    move-object/from16 v15, p6

    move-object/from16 v14, v22

    const/4 v1, 0x0

    if-eqz v2, :cond_5d

    if-eqz v11, :cond_5d

    iget-object v2, v13, Lym;->f:Lym;

    iget-object v11, v2, Lym;->d:Lyn;

    move-object/from16 v2, p11

    iget-object v1, v2, Lym;->f:Lym;

    iget-object v1, v1, Lym;->d:Lyn;

    iget-object v13, v0, Lyn;->V:Lyn;

    const/16 v17, 0x6

    if-eqz v16, :cond_3b

    if-nez v8, :cond_2b

    if-nez v4, :cond_28

    if-nez v3, :cond_28

    iget-boolean v3, v5, Lyh;->g:Z

    if-eqz v3, :cond_27

    iget-boolean v3, v14, Lyh;->g:Z

    if-nez v3, :cond_26

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    goto :goto_13

    :cond_26
    invoke-virtual/range {p10 .. p10}, Lym;->b()I

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {v10, v7, v5, v1, v3}, Lyc;->m(Lyh;Lyh;II)V

    invoke-virtual/range {p11 .. p11}, Lym;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v6, v14, v1, v3}, Lyc;->m(Lyh;Lyh;II)V

    return-void

    :cond_27
    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    goto :goto_13

    :cond_28
    move/from16 v18, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    :goto_13
    move/from16 p2, v3

    instance-of v3, v11, Lyj;

    if-nez v3, :cond_2a

    instance-of v3, v1, Lyj;

    if-eqz v3, :cond_29

    move-object/from16 v4, p7

    move v15, v8

    move/from16 v23, v20

    move/from16 v25, v21

    const/4 v3, 0x6

    move/from16 v8, p2

    move/from16 v21, v18

    move/from16 v20, v19

    const/16 v18, 0x1

    const/16 v19, 0x4

    goto/16 :goto_21

    :cond_29
    move v15, v8

    move/from16 v23, v20

    move/from16 v25, v21

    const/4 v3, 0x6

    move/from16 v8, p2

    move/from16 v21, v18

    move/from16 v20, v19

    const/16 v18, 0x1

    move/from16 v19, v4

    move-object/from16 v4, p7

    goto/16 :goto_21

    :cond_2a
    move-object/from16 v4, p7

    move v15, v8

    move/from16 v23, v20

    move/from16 v25, v21

    const/4 v3, 0x6

    move/from16 v8, p2

    move/from16 v21, v18

    move/from16 v20, v19

    const/16 v18, 0x1

    const/16 v19, 0x4

    goto/16 :goto_21

    :cond_2b
    const/4 v15, 0x2

    if-ne v8, v15, :cond_2e

    instance-of v4, v11, Lyj;

    if-nez v4, :cond_2d

    instance-of v4, v1, Lyj;

    if-eqz v4, :cond_2c

    goto :goto_14

    :cond_2c
    move-object/from16 v4, p7

    move/from16 v21, v3

    move v15, v8

    const/4 v3, 0x6

    const/4 v8, 0x5

    const/16 v18, 0x1

    const/16 v19, 0x5

    goto :goto_16

    :cond_2d
    :goto_14
    move-object/from16 v4, p7

    move/from16 v21, v3

    move v15, v8

    const/4 v3, 0x6

    const/4 v8, 0x5

    goto :goto_15

    :cond_2e
    const/4 v15, 0x1

    if-ne v8, v15, :cond_2f

    move-object/from16 v4, p7

    move/from16 v21, v3

    move v15, v8

    const/4 v3, 0x6

    const/16 v8, 0x8

    :goto_15
    const/16 v18, 0x1

    const/16 v19, 0x4

    :goto_16
    const/16 v20, 0x1

    const/16 v23, 0x0

    :goto_17
    const/16 v25, 0x1

    goto/16 :goto_21

    :cond_2f
    const/4 v15, 0x3

    if-ne v8, v15, :cond_3a

    iget v8, v0, Lyn;->C:I

    const/4 v15, -0x1

    if-ne v8, v15, :cond_32

    const/4 v15, 0x0

    if-eqz p20, :cond_31

    move-object/from16 v4, p7

    move/from16 v21, v3

    if-eqz p3, :cond_30

    const/4 v3, 0x5

    goto :goto_18

    :cond_30
    const/4 v3, 0x4

    goto :goto_18

    :cond_31
    move-object/from16 v4, p7

    move/from16 v21, v3

    const/16 v3, 0x8

    :goto_18
    const/16 v8, 0x8

    :goto_19
    const/4 v15, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x5

    :goto_1a
    const/16 v20, 0x1

    :goto_1b
    const/16 v23, 0x1

    goto :goto_17

    :cond_32
    const/4 v15, 0x0

    if-eqz v9, :cond_35

    move/from16 v4, p23

    const/4 v8, 0x2

    if-eq v4, v8, :cond_34

    const/4 v8, 0x1

    if-ne v4, v8, :cond_33

    goto :goto_1c

    :cond_33
    const/16 v4, 0x8

    const/16 v18, 0x5

    goto :goto_1d

    :cond_34
    const/4 v8, 0x1

    :goto_1c
    const/4 v4, 0x5

    const/16 v18, 0x4

    :goto_1d
    move/from16 v21, v3

    move v8, v4

    move/from16 v19, v18

    const/4 v3, 0x6

    const/4 v15, 0x3

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x1

    move-object/from16 v4, p7

    goto/16 :goto_21

    :cond_35
    const/4 v8, 0x1

    if-lez v4, :cond_36

    move-object/from16 v4, p7

    move/from16 v21, v3

    const/4 v3, 0x6

    const/4 v8, 0x5

    goto :goto_19

    :cond_36
    if-nez v4, :cond_39

    if-nez v3, :cond_39

    if-nez p20, :cond_37

    move-object/from16 v4, p7

    const/4 v3, 0x6

    const/4 v8, 0x5

    const/4 v15, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x8

    :goto_1e
    const/16 v20, 0x1

    const/16 v21, 0x0

    goto :goto_1b

    :cond_37
    if-eq v11, v13, :cond_38

    if-eq v1, v13, :cond_38

    const/4 v3, 0x4

    goto :goto_1f

    :cond_38
    const/4 v3, 0x5

    :goto_1f
    move-object/from16 v4, p7

    move v8, v3

    const/4 v3, 0x6

    const/4 v15, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x4

    goto :goto_1e

    :cond_39
    move-object/from16 v4, p7

    move/from16 v21, v3

    const/4 v3, 0x6

    const/4 v8, 0x5

    const/4 v15, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x4

    goto :goto_1a

    :cond_3a
    const/4 v15, 0x0

    const/16 v18, 0x1

    move-object/from16 v4, p7

    move/from16 v21, v3

    move v15, v8

    const/4 v3, 0x6

    const/4 v8, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    goto :goto_21

    :cond_3b
    const/4 v15, 0x0

    const/16 v18, 0x1

    iget-boolean v4, v5, Lyh;->g:Z

    if-eqz v4, :cond_3e

    iget-boolean v4, v14, Lyh;->g:Z

    if-eqz v4, :cond_3e

    invoke-virtual/range {p10 .. p10}, Lym;->b()I

    move-result v1

    invoke-virtual/range {p11 .. p11}, Lym;->b()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v7

    move-object/from16 p19, v5

    move/from16 p20, v1

    move/from16 p21, p16

    move-object/from16 p22, v14

    move-object/from16 p23, v6

    move/from16 p24, v3

    move/from16 p25, v4

    invoke-virtual/range {p17 .. p25}, Lyc;->d(Lyh;Lyh;IFLyh;Lyh;II)V

    if-eqz p3, :cond_3d

    if-eqz v12, :cond_3d

    iget-object v1, v2, Lym;->f:Lym;

    if-eqz v1, :cond_3c

    invoke-virtual/range {p11 .. p11}, Lym;->b()I

    move-result v8

    goto :goto_20

    :cond_3c
    const/4 v8, 0x0

    :goto_20
    move-object/from16 v4, p7

    if-eq v14, v4, :cond_3d

    const/4 v1, 0x5

    invoke-virtual {v10, v4, v6, v8, v1}, Lyc;->g(Lyh;Lyh;II)V

    :cond_3d
    return-void

    :cond_3e
    move-object/from16 v4, p7

    move/from16 v21, v3

    move v15, v8

    const/4 v3, 0x6

    const/4 v8, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v23, 0x0

    const/16 v25, 0x1

    :goto_21
    if-eqz v25, :cond_3f

    if-ne v5, v14, :cond_3f

    if-eq v11, v13, :cond_3f

    const/16 v24, 0x0

    const/16 v25, 0x0

    goto :goto_22

    :cond_3f
    const/16 v24, 0x1

    :goto_22
    if-eqz v20, :cond_42

    if-nez v16, :cond_40

    if-nez p18, :cond_40

    if-nez p20, :cond_40

    move/from16 p5, v12

    move-object/from16 v12, p6

    if-ne v5, v12, :cond_41

    if-ne v14, v4, :cond_41

    const/16 v20, 0x0

    const/16 v24, 0x8

    const/16 v26, 0x0

    const/16 v27, 0x8

    goto :goto_23

    :cond_40
    move/from16 p5, v12

    move-object/from16 v12, p6

    :cond_41
    move/from16 v20, p3

    move/from16 v27, v3

    move/from16 v26, v24

    move/from16 v24, v8

    :goto_23
    invoke-virtual/range {p10 .. p10}, Lym;->b()I

    move-result v8

    invoke-virtual/range {p11 .. p11}, Lym;->b()I

    move-result v28

    move-object v3, v1

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 p2, v15

    move-object v15, v3

    move-object v3, v5

    move v4, v8

    move-object v8, v5

    move/from16 v5, p16

    move-object/from16 p9, v6

    move-object v6, v14

    move-object v12, v7

    move-object/from16 v7, p9

    move-object/from16 v18, v13

    move-object v13, v8

    move/from16 v8, v28

    move/from16 v9, v27

    invoke-virtual/range {v1 .. v9}, Lyc;->d(Lyh;Lyh;IFLyh;Lyh;II)V

    move/from16 v8, v26

    goto :goto_24

    :cond_42
    move-object/from16 p9, v6

    move/from16 p5, v12

    move-object/from16 v18, v13

    move/from16 p2, v15

    move-object v15, v1

    move-object v13, v5

    move-object v12, v7

    move/from16 v20, p3

    move/from16 v29, v24

    move/from16 v24, v8

    move/from16 v8, v29

    :goto_24
    iget v1, v0, Lyn;->ai:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_44

    invoke-virtual/range {p11 .. p11}, Lym;->g()Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_25

    :cond_43
    return-void

    :cond_44
    :goto_25
    if-eqz v25, :cond_47

    if-eqz v20, :cond_46

    if-eq v13, v14, :cond_46

    if-nez v16, :cond_46

    instance-of v1, v11, Lyj;

    if-nez v1, :cond_45

    instance-of v1, v15, Lyj;

    if-eqz v1, :cond_46

    const/4 v1, 0x6

    goto :goto_26

    :cond_45
    const/4 v1, 0x6

    goto :goto_26

    :cond_46
    move/from16 v1, v24

    :goto_26
    invoke-virtual/range {p10 .. p10}, Lym;->b()I

    move-result v2

    invoke-virtual {v10, v12, v13, v2, v1}, Lyc;->g(Lyh;Lyh;II)V

    invoke-virtual/range {p11 .. p11}, Lym;->b()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v3, p9

    invoke-virtual {v10, v3, v14, v2, v1}, Lyc;->h(Lyh;Lyh;II)V

    move/from16 v24, v1

    goto :goto_27

    :cond_47
    move-object/from16 v3, p9

    :goto_27
    if-eqz v20, :cond_49

    if-eqz p21, :cond_49

    instance-of v1, v11, Lyj;

    if-nez v1, :cond_48

    instance-of v1, v15, Lyj;

    if-nez v1, :cond_48

    move-object/from16 v1, v18

    if-eq v15, v1, :cond_4a

    const/4 v2, 0x6

    const/4 v4, 0x6

    const/4 v8, 0x1

    goto :goto_29

    :cond_48
    move-object/from16 v1, v18

    goto :goto_28

    :cond_49
    move-object/from16 v1, v18

    :cond_4a
    :goto_28
    move/from16 v2, v19

    move/from16 v4, v24

    :goto_29
    if-eqz v8, :cond_57

    if-eqz v23, :cond_53

    move/from16 v5, p20

    if-eqz v5, :cond_4b

    if-eqz p4, :cond_54

    :cond_4b
    if-eq v11, v1, :cond_4d

    if-ne v15, v1, :cond_4c

    goto :goto_2a

    :cond_4c
    move/from16 v17, v2

    goto :goto_2a

    :cond_4d
    :goto_2a
    instance-of v6, v11, Lyq;

    if-nez v6, :cond_4e

    instance-of v6, v15, Lyq;

    if-eqz v6, :cond_4f

    const/16 v17, 0x5

    goto :goto_2b

    :cond_4e
    const/16 v17, 0x5

    :cond_4f
    :goto_2b
    instance-of v6, v11, Lyj;

    if-nez v6, :cond_50

    instance-of v6, v15, Lyj;

    if-eqz v6, :cond_51

    const/16 v17, 0x5

    goto :goto_2c

    :cond_50
    const/16 v17, 0x5

    :cond_51
    :goto_2c
    const/4 v6, 0x1

    if-ne v6, v5, :cond_52

    const/4 v6, 0x5

    goto :goto_2d

    :cond_52
    move/from16 v6, v17

    :goto_2d
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2e

    :cond_53
    move/from16 v5, p20

    :cond_54
    :goto_2e
    if-eqz v20, :cond_56

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p17, :cond_56

    if-nez v5, :cond_56

    if-eq v11, v1, :cond_55

    if-ne v15, v1, :cond_56

    const/4 v2, 0x4

    goto :goto_2f

    :cond_55
    const/4 v2, 0x4

    :cond_56
    :goto_2f
    invoke-virtual/range {p10 .. p10}, Lym;->b()I

    move-result v1

    invoke-virtual {v10, v12, v13, v1, v2}, Lyc;->m(Lyh;Lyh;II)V

    invoke-virtual/range {p11 .. p11}, Lym;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v3, v14, v1, v2}, Lyc;->m(Lyh;Lyh;II)V

    :cond_57
    if-eqz v20, :cond_59

    move-object/from16 v1, p6

    move-object v2, v12

    if-ne v1, v13, :cond_58

    invoke-virtual/range {p10 .. p10}, Lym;->b()I

    move-result v8

    goto :goto_30

    :cond_58
    const/4 v8, 0x0

    :goto_30
    if-eq v13, v1, :cond_5a

    const/4 v4, 0x5

    invoke-virtual {v10, v2, v1, v8, v4}, Lyc;->g(Lyh;Lyh;II)V

    goto :goto_31

    :cond_59
    move-object v2, v12

    :cond_5a
    :goto_31
    if-eqz v20, :cond_5c

    if-eqz v16, :cond_5c

    if-nez p14, :cond_5c

    if-nez v21, :cond_5c

    move/from16 v8, p2

    const/4 v1, 0x3

    if-ne v8, v1, :cond_5b

    const/16 v1, 0x8

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v2, v4, v1}, Lyc;->g(Lyh;Lyh;II)V

    const/4 v1, 0x5

    goto :goto_32

    :cond_5b
    const/4 v4, 0x0

    const/4 v1, 0x5

    invoke-virtual {v10, v3, v2, v4, v1}, Lyc;->g(Lyh;Lyh;II)V

    goto :goto_32

    :cond_5c
    const/4 v1, 0x5

    goto :goto_32

    :cond_5d
    move-object v3, v6

    move/from16 p5, v12

    const/4 v1, 0x5

    move/from16 v20, p3

    :goto_32
    if-eqz v20, :cond_5f

    if-eqz p5, :cond_5f

    move-object/from16 v2, p11

    iget-object v4, v2, Lym;->f:Lym;

    if-eqz v4, :cond_5e

    invoke-virtual/range {p11 .. p11}, Lym;->b()I

    move-result v8

    goto :goto_33

    :cond_5e
    const/4 v8, 0x0

    :goto_33
    move-object/from16 v4, p7

    if-eq v14, v4, :cond_5f

    invoke-virtual {v10, v4, v3, v8, v1}, Lyc;->g(Lyh;Lyh;II)V

    :cond_5f
    return-void

    :cond_60
    move-object/from16 v5, p6

    move-object/from16 v4, p7

    move-object v3, v6

    move-object v2, v7

    move/from16 p5, v12

    const/4 v1, 0x3

    const/4 v6, 0x1

    :goto_34
    const/4 v7, 0x2

    if-ge v14, v7, :cond_65

    if-eqz p3, :cond_65

    if-eqz p5, :cond_65

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v10, v2, v5, v8, v7}, Lyc;->g(Lyh;Lyh;II)V

    if-nez p2, :cond_62

    iget-object v2, v0, Lyn;->O:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    if-nez v2, :cond_61

    const/4 v8, 0x1

    goto :goto_35

    :cond_61
    const/4 v8, 0x0

    goto :goto_35

    :cond_62
    const/4 v8, 0x1

    :goto_35
    if-nez p2, :cond_63

    iget-object v2, v0, Lyn;->O:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    if-eqz v2, :cond_63

    iget-object v2, v2, Lym;->d:Lyn;

    iget v5, v2, Lyn;->Y:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_65

    iget-object v2, v2, Lyn;->ar:[I

    const/4 v5, 0x0

    aget v7, v2, v5

    if-ne v7, v1, :cond_65

    aget v2, v2, v6

    if-ne v2, v1, :cond_65

    goto :goto_36

    :cond_63
    if-nez v8, :cond_64

    goto :goto_37

    :cond_64
    :goto_36
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v10, v4, v3, v2, v1}, Lyc;->g(Lyh;Lyh;II)V

    :cond_65
    :goto_37
    return-void

    :cond_66
    const/4 v1, 0x0

    goto :goto_39

    :goto_38
    throw v1

    :goto_39
    goto :goto_38

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iput p1, p0, Lyn;->X:I

    iget v0, p0, Lyn;->ae:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lyn;->X:I

    :cond_0
    return-void
.end method

.method protected final B(IZ)V
    .locals 1

    iget-object v0, p0, Lyn;->U:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public final C(II)V
    .locals 0

    iput p1, p0, Lyn;->I:I

    iput p2, p0, Lyn;->J:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyn;->a:Z

    return-void
.end method

.method public final D(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lyn;->ae:I

    return-void

    :cond_0
    iput p1, p0, Lyn;->ae:I

    return-void
.end method

.method public final E(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lyn;->ad:I

    return-void

    :cond_0
    iput p1, p0, Lyn;->ad:I

    return-void
.end method

.method public final F(I)V
    .locals 1

    iput p1, p0, Lyn;->W:I

    iget v0, p0, Lyn;->ad:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lyn;->W:I

    :cond_0
    return-void
.end method

.method public G(ZZ)V
    .locals 7

    iget-object v0, p0, Lyn;->h:Lze;

    iget-boolean v1, v0, Lzi;->h:Z

    and-int/2addr p1, v1

    iget-object v1, p0, Lyn;->i:Lzg;

    iget-boolean v2, v1, Lzi;->h:Z

    and-int/2addr p2, v2

    iget-object v2, v0, Lze;->i:Lyz;

    iget v2, v2, Lyz;->f:I

    iget-object v3, v1, Lzg;->i:Lyz;

    iget v3, v3, Lyz;->f:I

    iget-object v0, v0, Lze;->j:Lyz;

    iget v0, v0, Lyz;->f:I

    iget-object v1, v1, Lzg;->j:Lyz;

    iget v1, v1, Lyz;->f:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iput v2, p0, Lyn;->aa:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Lyn;->ab:I

    :cond_3
    iget v4, p0, Lyn;->ai:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    iput v6, p0, Lyn;->W:I

    iput v6, p0, Lyn;->X:I

    return-void

    :cond_4
    const/4 v4, 0x1

    if-eqz p1, :cond_6

    sub-int/2addr v0, v2

    iget-object p1, p0, Lyn;->ar:[I

    aget p1, p1, v6

    if-ne p1, v4, :cond_5

    iget p1, p0, Lyn;->W:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Lyn;->W:I

    iget p1, p0, Lyn;->ad:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Lyn;->W:I

    :cond_6
    if-eqz p2, :cond_8

    sub-int/2addr v1, v3

    iget-object p1, p0, Lyn;->ar:[I

    aget p1, p1, v4

    if-ne p1, v4, :cond_7

    iget p1, p0, Lyn;->X:I

    if-ge v1, p1, :cond_7

    move v1, p1

    :cond_7
    iput v1, p0, Lyn;->X:I

    iget p1, p0, Lyn;->ae:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Lyn;->X:I

    :cond_8
    return-void
.end method

.method final H()Z
    .locals 1

    instance-of v0, p0, Lyt;

    if-nez v0, :cond_1

    instance-of v0, p0, Lyq;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final I(I)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lyn;->K:Lym;

    iget-object p1, p1, Lym;->f:Lym;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lyn;->M:Lym;

    iget-object v3, v3, Lym;->f:Lym;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    iget-object p1, p0, Lyn;->L:Lym;

    iget-object p1, p1, Lym;->f:Lym;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iget-object v3, p0, Lyn;->N:Lym;

    iget-object v3, v3, Lym;->f:Lym;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lyn;->O:Lym;

    iget-object v4, v4, Lym;->f:Lym;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    add-int/2addr p1, v3

    add-int/2addr p1, v4

    if-ge p1, v0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method public final J(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lyn;->K:Lym;

    iget-object p1, p1, Lym;->f:Lym;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lym;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyn;->M:Lym;

    iget-object v2, p1, Lym;->f:Lym;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lym;->c:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    invoke-virtual {p1}, Lym;->b()I

    move-result p1

    sub-int/2addr v2, p1

    iget-object p1, p0, Lyn;->K:Lym;

    iget-object p1, p1, Lym;->f:Lym;

    invoke-virtual {p1}, Lym;->a()I

    move-result p1

    iget-object v3, p0, Lyn;->K:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    add-int/2addr p1, v3

    sub-int/2addr v2, p1

    if-lt v2, p2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object p1, p0, Lyn;->L:Lym;

    iget-object p1, p1, Lym;->f:Lym;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lym;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyn;->N:Lym;

    iget-object v2, p1, Lym;->f:Lym;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lym;->c:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    invoke-virtual {p1}, Lym;->b()I

    move-result p1

    sub-int/2addr v2, p1

    iget-object p1, p0, Lyn;->L:Lym;

    iget-object p1, p1, Lym;->f:Lym;

    invoke-virtual {p1}, Lym;->a()I

    move-result p1

    iget-object v3, p0, Lyn;->L:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    add-int/2addr p1, v3

    sub-int/2addr v2, p1

    if-lt v2, p2, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public final K()Z
    .locals 2

    iget-object v0, p0, Lyn;->K:Lym;

    iget-object v1, v0, Lym;->f:Lym;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lym;->f:Lym;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lyn;->M:Lym;

    iget-object v1, v0, Lym;->f:Lym;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lym;->f:Lym;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final L()Z
    .locals 2

    iget-object v0, p0, Lyn;->L:Lym;

    iget-object v1, v0, Lym;->f:Lym;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lym;->f:Lym;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lyn;->N:Lym;

    iget-object v1, v0, Lym;->f:Lym;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lym;->f:Lym;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Z
    .locals 2

    iget-boolean v0, p0, Lyn;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lyn;->ai:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final N(I)I
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lyn;->O()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lyn;->P()I

    move-result p1

    return p1
.end method

.method public final O()I
    .locals 2

    iget-object v0, p0, Lyn;->ar:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final P()I
    .locals 2

    iget-object v0, p0, Lyn;->ar:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final Q(I)V
    .locals 2

    iget-object v0, p0, Lyn;->ar:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public final R(I)V
    .locals 2

    iget-object v0, p0, Lyn;->ar:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public S(Z)V
    .locals 7

    iget-object v0, p0, Lyn;->K:Lym;

    invoke-static {v0}, Lyc;->o(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lyn;->L:Lym;

    invoke-static {v1}, Lyc;->o(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lyn;->M:Lym;

    invoke-static {v2}, Lyc;->o(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lyn;->N:Lym;

    invoke-static {v3}, Lyc;->o(Ljava/lang/Object;)I

    move-result v3

    if-eqz p1, :cond_0

    iget-object v4, p0, Lyn;->h:Lze;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lze;->i:Lyz;

    iget-boolean v6, v5, Lyz;->i:Z

    if-eqz v6, :cond_0

    iget-object v4, v4, Lze;->j:Lyz;

    iget-boolean v6, v4, Lyz;->i:Z

    if-eqz v6, :cond_0

    iget v0, v5, Lyz;->f:I

    iget v2, v4, Lyz;->f:I

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lyn;->i:Lzg;

    if-eqz p1, :cond_1

    iget-object v4, p1, Lzg;->i:Lyz;

    iget-boolean v5, v4, Lyz;->i:Z

    if-eqz v5, :cond_1

    iget-object p1, p1, Lzg;->j:Lyz;

    iget-boolean v5, p1, Lyz;->i:Z

    if-eqz v5, :cond_1

    iget v1, v4, Lyz;->f:I

    iget v3, p1, Lyz;->f:I

    goto :goto_0

    :cond_1
    :goto_0
    sub-int p1, v2, v0

    const/4 v4, 0x0

    if-ltz p1, :cond_2

    sub-int p1, v3, v1

    if-ltz p1, :cond_2

    const/high16 p1, -0x80000000

    if-eq v0, p1, :cond_2

    const v5, 0x7fffffff

    if-eq v0, v5, :cond_2

    if-eq v1, p1, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v2, p1, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v3, p1, :cond_2

    if-ne v3, v5, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_1
    iput v0, p0, Lyn;->aa:I

    iput v1, p0, Lyn;->ab:I

    iget p1, p0, Lyn;->ai:I

    const/16 v5, 0x8

    if-ne p1, v5, :cond_4

    iput v4, p0, Lyn;->W:I

    iput v4, p0, Lyn;->X:I

    return-void

    :cond_4
    sub-int/2addr v2, v0

    iget-object p1, p0, Lyn;->ar:[I

    aget v0, p1, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    iget v0, p0, Lyn;->W:I

    if-ge v2, v0, :cond_5

    move v2, v0

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_2
    sub-int/2addr v3, v1

    aget p1, p1, v4

    if-ne p1, v4, :cond_7

    iget p1, p0, Lyn;->X:I

    if-ge v3, p1, :cond_7

    move v3, p1

    :cond_7
    iput v2, p0, Lyn;->W:I

    iput v3, p0, Lyn;->X:I

    iget p1, p0, Lyn;->ae:I

    if-ge v3, p1, :cond_8

    iput p1, p0, Lyn;->X:I

    :cond_8
    iget p1, p0, Lyn;->ad:I

    if-ge v2, p1, :cond_9

    iput p1, p0, Lyn;->W:I

    goto :goto_3

    :cond_9
    move p1, v2

    :goto_3
    iget v1, p0, Lyn;->x:I

    const/4 v5, 0x3

    if-lez v1, :cond_a

    if-ne v0, v5, :cond_a

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lyn;->W:I

    :cond_a
    iget p1, p0, Lyn;->A:I

    if-lez p1, :cond_b

    iget-object v0, p0, Lyn;->ar:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_b

    iget v0, p0, Lyn;->X:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lyn;->X:I

    :cond_b
    iget p1, p0, Lyn;->W:I

    if-eq v2, p1, :cond_c

    iput p1, p0, Lyn;->k:I

    :cond_c
    iget p1, p0, Lyn;->X:I

    if-eq v3, p1, :cond_d

    iput p1, p0, Lyn;->l:I

    :cond_d
    return-void
.end method

.method public T(Landroidx/wear/ambient/AmbientDelegate;)V
    .locals 0

    iget-object p1, p0, Lyn;->K:Lym;

    invoke-virtual {p1}, Lym;->i()V

    iget-object p1, p0, Lyn;->L:Lym;

    invoke-virtual {p1}, Lym;->i()V

    iget-object p1, p0, Lyn;->M:Lym;

    invoke-virtual {p1}, Lym;->i()V

    iget-object p1, p0, Lyn;->N:Lym;

    invoke-virtual {p1}, Lym;->i()V

    iget-object p1, p0, Lyn;->O:Lym;

    invoke-virtual {p1}, Lym;->i()V

    iget-object p1, p0, Lyn;->R:Lym;

    invoke-virtual {p1}, Lym;->i()V

    iget-object p1, p0, Lyn;->P:Lym;

    invoke-virtual {p1}, Lym;->i()V

    iget-object p1, p0, Lyn;->Q:Lym;

    invoke-virtual {p1}, Lym;->i()V

    return-void
.end method

.method public b(Lyc;Z)V
    .locals 50

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lyn;->K:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v13

    iget-object v0, v15, Lyn;->M:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v12

    iget-object v0, v15, Lyn;->L:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v11

    iget-object v0, v15, Lyn;->N:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v10

    iget-object v0, v15, Lyn;->O:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v9

    iget-object v0, v15, Lyn;->V:Lyn;

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lyn;->ar:[I

    aget v1, v0, v6

    if-ne v1, v8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aget v0, v0, v7

    if-ne v0, v8, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, v15, Lyn;->s:I

    packed-switch v2, :pswitch_data_0

    move/from16 v28, v0

    move/from16 v29, v1

    goto :goto_3

    :pswitch_0
    move/from16 v28, v0

    goto :goto_2

    :pswitch_1
    move/from16 v29, v1

    const/16 v28, 0x0

    goto :goto_3

    :cond_2
    :pswitch_2
    const/16 v28, 0x0

    :goto_2
    const/16 v29, 0x0

    :goto_3
    iget v0, v15, Lyn;->ai:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_5

    iget-object v0, v15, Lyn;->T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    iget-object v2, v15, Lyn;->T:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lym;

    invoke-virtual {v2}, Lym;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, v15, Lyn;->U:[Z

    aget-boolean v1, v0, v6

    if-nez v1, :cond_5

    aget-boolean v0, v0, v7

    if-nez v0, :cond_5

    return-void

    :cond_5
    :goto_5
    iget-boolean v0, v15, Lyn;->b:Z

    if-nez v0, :cond_6

    iget-boolean v0, v15, Lyn;->n:Z

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_6
    iget v0, v15, Lyn;->aa:I

    invoke-virtual {v14, v13, v0}, Lyc;->f(Lyh;I)V

    iget v0, v15, Lyn;->aa:I

    iget v1, v15, Lyn;->W:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v12, v0}, Lyc;->f(Lyh;I)V

    if-eqz v29, :cond_a

    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_a

    iget-object v1, v15, Lyn;->K:Lym;

    check-cast v0, Lyo;

    iget-object v2, v0, Lyo;->aD:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lym;->a()I

    move-result v2

    iget-object v3, v0, Lyo;->aD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lym;

    invoke-virtual {v3}, Lym;->a()I

    move-result v3

    if-le v2, v3, :cond_8

    :cond_7
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lyo;->aD:Ljava/lang/ref/WeakReference;

    :cond_8
    iget-object v1, v15, Lyn;->M:Lym;

    iget-object v2, v0, Lyo;->aF:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lym;->a()I

    move-result v2

    iget-object v3, v0, Lyo;->aF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lym;

    invoke-virtual {v3}, Lym;->a()I

    move-result v3

    if-le v2, v3, :cond_a

    :cond_9
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lyo;->aF:Ljava/lang/ref/WeakReference;

    :cond_a
    :goto_6
    iget-boolean v0, v15, Lyn;->n:Z

    if-eqz v0, :cond_f

    iget v0, v15, Lyn;->ab:I

    invoke-virtual {v14, v11, v0}, Lyc;->f(Lyh;I)V

    iget v0, v15, Lyn;->ab:I

    iget v1, v15, Lyn;->X:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v10, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->O:Lym;

    invoke-virtual {v0}, Lym;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v15, Lyn;->ab:I

    iget v1, v15, Lyn;->ac:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v9, v0}, Lyc;->f(Lyh;I)V

    :cond_b
    if-eqz v28, :cond_f

    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_f

    iget-object v1, v15, Lyn;->L:Lym;

    check-cast v0, Lyo;

    iget-object v2, v0, Lyo;->aC:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lym;->a()I

    move-result v2

    iget-object v3, v0, Lyo;->aC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lym;

    invoke-virtual {v3}, Lym;->a()I

    move-result v3

    if-le v2, v3, :cond_d

    :cond_c
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lyo;->aC:Ljava/lang/ref/WeakReference;

    :cond_d
    iget-object v1, v15, Lyn;->N:Lym;

    iget-object v2, v0, Lyo;->aE:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lym;->a()I

    move-result v2

    iget-object v3, v0, Lyo;->aE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lym;

    invoke-virtual {v3}, Lym;->a()I

    move-result v3

    if-le v2, v3, :cond_f

    :cond_e
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lyo;->aE:Ljava/lang/ref/WeakReference;

    :cond_f
    iget-boolean v0, v15, Lyn;->b:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v15, Lyn;->n:Z

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    iput-boolean v6, v15, Lyn;->b:Z

    iput-boolean v6, v15, Lyn;->n:Z

    return-void

    :cond_11
    :goto_7
    sget-object v0, Lyc;->b:Lyd;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_12

    iget-wide v3, v0, Lyd;->A:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lyd;->A:J

    :cond_12
    if-eqz p2, :cond_16

    iget-object v3, v15, Lyn;->h:Lze;

    if-eqz v3, :cond_16

    iget-object v4, v15, Lyn;->i:Lzg;

    if-eqz v4, :cond_16

    iget-object v8, v3, Lze;->i:Lyz;

    iget-boolean v7, v8, Lyz;->i:Z

    if-eqz v7, :cond_16

    iget-object v3, v3, Lze;->j:Lyz;

    iget-boolean v3, v3, Lyz;->i:Z

    if-eqz v3, :cond_16

    iget-object v3, v4, Lzg;->i:Lyz;

    iget-boolean v3, v3, Lyz;->i:Z

    if-eqz v3, :cond_16

    iget-object v3, v4, Lzg;->j:Lyz;

    iget-boolean v3, v3, Lyz;->i:Z

    if-eqz v3, :cond_16

    if-eqz v0, :cond_13

    iget-wide v3, v0, Lyd;->t:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lyd;->t:J

    :cond_13
    iget v0, v8, Lyz;->f:I

    invoke-virtual {v14, v13, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->j:Lyz;

    iget v0, v0, Lyz;->f:I

    invoke-virtual {v14, v12, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->i:Lyz;

    iget v0, v0, Lyz;->f:I

    invoke-virtual {v14, v11, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    iget v0, v0, Lyz;->f:I

    invoke-virtual {v14, v10, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->a:Lyz;

    iget v0, v0, Lyz;->f:I

    invoke-virtual {v14, v9, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_15

    if-eqz v29, :cond_14

    iget-object v0, v15, Lyn;->j:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lyn;->K()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v15, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->M:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v6, v5}, Lyc;->g(Lyh;Lyh;II)V

    :cond_14
    if-eqz v28, :cond_15

    iget-object v0, v15, Lyn;->j:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lyn;->L()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v15, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->N:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v6, v5}, Lyc;->g(Lyh;Lyh;II)V

    :cond_15
    iput-boolean v6, v15, Lyn;->b:Z

    iput-boolean v6, v15, Lyn;->n:Z

    return-void

    :cond_16
    if-eqz v0, :cond_17

    iget-wide v3, v0, Lyd;->u:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lyd;->u:J

    :cond_17
    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_1c

    invoke-direct {v15, v6}, Lyn;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v15, Lyn;->V:Lyn;

    check-cast v0, Lyo;

    invoke-virtual {v0, v15, v6}, Lyo;->a(Lyn;I)V

    const/4 v0, 0x1

    goto :goto_8

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lyn;->K()Z

    move-result v0

    :goto_8
    const/4 v1, 0x1

    invoke-direct {v15, v1}, Lyn;->a(I)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v15, Lyn;->V:Lyn;

    check-cast v2, Lyo;

    invoke-virtual {v2, v15, v1}, Lyo;->a(Lyn;I)V

    const/4 v1, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lyn;->L()Z

    move-result v1

    :goto_9
    if-nez v0, :cond_1a

    if-eqz v29, :cond_1a

    iget v2, v15, Lyn;->ai:I

    if-eq v2, v5, :cond_1a

    iget-object v2, v15, Lyn;->K:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    if-nez v2, :cond_1a

    iget-object v2, v15, Lyn;->M:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    if-nez v2, :cond_1a

    iget-object v2, v15, Lyn;->V:Lyn;

    iget-object v2, v2, Lyn;->M:Lym;

    invoke-virtual {v14, v2}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v12, v6, v3}, Lyc;->g(Lyh;Lyh;II)V

    :cond_1a
    if-nez v1, :cond_1b

    if-eqz v28, :cond_1b

    iget v2, v15, Lyn;->ai:I

    if-eq v2, v5, :cond_1b

    iget-object v2, v15, Lyn;->L:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    if-nez v2, :cond_1b

    iget-object v2, v15, Lyn;->N:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    if-nez v2, :cond_1b

    iget-object v2, v15, Lyn;->O:Lym;

    if-nez v2, :cond_1b

    iget-object v2, v15, Lyn;->V:Lyn;

    iget-object v2, v2, Lyn;->N:Lym;

    invoke-virtual {v14, v2}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v10, v6, v3}, Lyc;->g(Lyh;Lyh;II)V

    :cond_1b
    move/from16 v31, v0

    move/from16 v30, v1

    goto :goto_a

    :cond_1c
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_a
    iget v0, v15, Lyn;->W:I

    iget v1, v15, Lyn;->ad:I

    if-lt v0, v1, :cond_1d

    move v1, v0

    :cond_1d
    iget v2, v15, Lyn;->X:I

    iget v3, v15, Lyn;->ae:I

    if-lt v2, v3, :cond_1e

    move v3, v2

    :cond_1e
    iget-object v4, v15, Lyn;->ar:[I

    aget v7, v4, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1f

    const/16 v18, 0x1

    goto :goto_b

    :cond_1f
    const/16 v18, 0x0

    :goto_b
    const/16 v17, 0x1

    aget v4, v4, v17

    if-eq v4, v8, :cond_20

    const/16 v19, 0x1

    goto :goto_c

    :cond_20
    const/16 v19, 0x0

    :goto_c
    iget v6, v15, Lyn;->Z:I

    iput v6, v15, Lyn;->C:I

    iget v8, v15, Lyn;->Y:F

    iput v8, v15, Lyn;->D:F

    iget v5, v15, Lyn;->t:I

    move/from16 v23, v1

    iget v1, v15, Lyn;->u:I

    const/16 v24, 0x0

    move/from16 v25, v3

    cmpl-float v24, v8, v24

    if-lez v24, :cond_39

    iget v3, v15, Lyn;->ai:I

    move-object/from16 v27, v9

    const/16 v9, 0x8

    if-eq v3, v9, :cond_3a

    const/4 v3, 0x3

    if-ne v7, v3, :cond_22

    if-nez v5, :cond_21

    const/4 v5, 0x3

    const/4 v7, 0x3

    goto :goto_d

    :cond_21
    const/4 v7, 0x3

    :cond_22
    :goto_d
    if-ne v4, v3, :cond_24

    if-nez v1, :cond_23

    const/4 v1, 0x3

    const/4 v4, 0x3

    goto :goto_e

    :cond_23
    const/4 v4, 0x3

    :cond_24
    :goto_e
    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v7, v3, :cond_33

    if-ne v4, v3, :cond_33

    if-ne v5, v3, :cond_33

    if-ne v1, v3, :cond_32

    const/4 v0, -0x1

    if-ne v6, v0, :cond_27

    if-eqz v18, :cond_25

    if-nez v19, :cond_25

    const/4 v0, 0x0

    iput v0, v15, Lyn;->C:I

    goto :goto_f

    :cond_25
    if-nez v18, :cond_26

    if-eqz v19, :cond_26

    const/4 v0, 0x1

    iput v0, v15, Lyn;->C:I

    div-float v0, v9, v8

    iput v0, v15, Lyn;->D:F

    :cond_26
    const/4 v0, 0x1

    goto :goto_11

    :cond_27
    if-nez v6, :cond_2a

    :goto_f
    iget-object v0, v15, Lyn;->L:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v15, Lyn;->N:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_10

    :cond_28
    const/4 v0, 0x1

    goto :goto_11

    :cond_29
    :goto_10
    const/4 v0, 0x1

    iput v0, v15, Lyn;->C:I

    goto :goto_12

    :cond_2a
    const/4 v0, 0x1

    :goto_11
    iget v2, v15, Lyn;->C:I

    if-ne v2, v0, :cond_2c

    iget-object v0, v15, Lyn;->K:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v15, Lyn;->M:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_2b
    const/4 v0, 0x0

    iput v0, v15, Lyn;->C:I

    :cond_2c
    :goto_12
    iget v0, v15, Lyn;->C:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2f

    iget-object v0, v15, Lyn;->L:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v15, Lyn;->N:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v15, Lyn;->K:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v15, Lyn;->M:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2d
    iget-object v0, v15, Lyn;->L:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v15, Lyn;->N:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    iput v0, v15, Lyn;->C:I

    goto :goto_13

    :cond_2e
    iget-object v0, v15, Lyn;->K:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v15, Lyn;->M:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, v15, Lyn;->D:F

    div-float v0, v9, v0

    iput v0, v15, Lyn;->D:F

    const/4 v0, 0x1

    iput v0, v15, Lyn;->C:I

    :cond_2f
    :goto_13
    iget v0, v15, Lyn;->C:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_31

    iget v2, v15, Lyn;->w:I

    if-lez v2, :cond_30

    iget v3, v15, Lyn;->z:I

    if-nez v3, :cond_30

    const/4 v0, 0x0

    iput v0, v15, Lyn;->C:I

    move/from16 v34, v1

    move/from16 v35, v5

    move/from16 v1, v23

    move/from16 v33, v25

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/16 v32, 0x1

    goto/16 :goto_18

    :cond_30
    if-nez v2, :cond_31

    iget v2, v15, Lyn;->z:I

    if-lez v2, :cond_31

    iget v0, v15, Lyn;->D:F

    div-float/2addr v9, v0

    iput v9, v15, Lyn;->D:F

    const/4 v0, 0x1

    iput v0, v15, Lyn;->C:I

    move/from16 v34, v1

    move/from16 v35, v5

    move/from16 v1, v23

    move/from16 v33, v25

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_14

    :cond_31
    move v6, v0

    move/from16 v34, v1

    move/from16 v35, v5

    move/from16 v1, v23

    move/from16 v33, v25

    :goto_14
    const/16 v32, 0x1

    goto/16 :goto_18

    :cond_32
    const/4 v3, 0x3

    goto :goto_15

    :cond_33
    move v3, v5

    :goto_15
    const/16 v18, 0x4

    const/4 v9, 0x3

    if-ne v7, v9, :cond_35

    if-ne v3, v9, :cond_35

    const/4 v0, 0x0

    iput v0, v15, Lyn;->C:I

    int-to-float v0, v2

    mul-float v8, v8, v0

    float-to-int v0, v8

    move/from16 v34, v1

    if-eq v4, v9, :cond_34

    move/from16 v33, v25

    const/4 v6, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x4

    goto :goto_16

    :cond_34
    move/from16 v35, v5

    move/from16 v33, v25

    const/4 v6, 0x0

    const/16 v32, 0x1

    :goto_16
    move v1, v0

    const/4 v0, 0x0

    goto :goto_18

    :cond_35
    if-ne v4, v9, :cond_38

    if-ne v1, v9, :cond_38

    const/4 v2, 0x1

    iput v2, v15, Lyn;->C:I

    const/4 v2, -0x1

    if-ne v6, v2, :cond_36

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v8, v2, v8

    iput v8, v15, Lyn;->D:F

    :cond_36
    int-to-float v0, v0

    mul-float v8, v8, v0

    float-to-int v3, v8

    const/4 v0, 0x3

    if-eq v7, v0, :cond_37

    move/from16 v33, v3

    move/from16 v35, v5

    move/from16 v1, v23

    const/4 v0, 0x1

    const/4 v6, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x4

    goto :goto_18

    :cond_37
    move/from16 v34, v1

    move/from16 v33, v3

    move/from16 v35, v5

    move/from16 v1, v23

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_17

    :cond_38
    move/from16 v34, v1

    move/from16 v35, v5

    move v0, v6

    move/from16 v1, v23

    move/from16 v33, v25

    :goto_17
    const/16 v32, 0x1

    goto :goto_18

    :cond_39
    move-object/from16 v27, v9

    :cond_3a
    move/from16 v34, v1

    move/from16 v35, v5

    move v0, v6

    move/from16 v1, v23

    move/from16 v33, v25

    const/16 v32, 0x0

    :goto_18
    iget-object v2, v15, Lyn;->v:[I

    const/4 v3, 0x0

    aput v35, v2, v3

    const/4 v3, 0x1

    aput v34, v2, v3

    if-eqz v32, :cond_3c

    if-eqz v6, :cond_3b

    const/4 v2, -0x1

    if-ne v6, v2, :cond_3c

    const/16 v18, 0x1

    goto :goto_19

    :cond_3b
    const/16 v18, 0x1

    goto :goto_19

    :cond_3c
    const/16 v18, 0x0

    :goto_19
    if-eqz v32, :cond_3e

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3d

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3e

    const/16 v36, 0x1

    goto :goto_1a

    :cond_3d
    const/16 v36, 0x1

    goto :goto_1a

    :cond_3e
    const/16 v36, 0x0

    :goto_1a
    iget-object v0, v15, Lyn;->ar:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3f

    instance-of v0, v15, Lyo;

    if-eqz v0, :cond_3f

    const/4 v9, 0x1

    goto :goto_1b

    :cond_3f
    const/4 v9, 0x0

    :goto_1b
    const/4 v0, 0x1

    if-ne v0, v9, :cond_40

    const/16 v19, 0x0

    goto :goto_1c

    :cond_40
    move/from16 v19, v1

    :goto_1c
    iget-object v1, v15, Lyn;->R:Lym;

    invoke-virtual {v1}, Lym;->h()Z

    move-result v1

    xor-int/lit8 v37, v1, 0x1

    iget-object v1, v15, Lyn;->U:[Z

    const/4 v2, 0x0

    aget-boolean v23, v1, v2

    aget-boolean v38, v1, v0

    iget v0, v15, Lyn;->q:I

    const/16 v39, 0x0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_49

    iget-boolean v0, v15, Lyn;->b:Z

    if-nez v0, :cond_49

    if-eqz p2, :cond_45

    iget-object v0, v15, Lyn;->h:Lze;

    if-eqz v0, :cond_45

    iget-object v1, v0, Lze;->i:Lyz;

    iget-boolean v2, v1, Lyz;->i:Z

    if-eqz v2, :cond_44

    iget-object v0, v0, Lze;->j:Lyz;

    iget-boolean v0, v0, Lyz;->i:Z

    if-nez v0, :cond_41

    const/16 v5, 0x8

    goto :goto_1d

    :cond_41
    iget v0, v1, Lyz;->f:I

    invoke-virtual {v14, v13, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->j:Lyz;

    iget v0, v0, Lyz;->f:I

    invoke-virtual {v14, v12, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_43

    if-eqz v29, :cond_43

    iget-object v0, v15, Lyn;->j:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_43

    invoke-virtual/range {p0 .. p0}, Lyn;->K()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, v15, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->M:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v14, v0, v12, v1, v5}, Lyc;->g(Lyh;Lyh;II)V

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v42, v12

    move-object/from16 v44, v13

    move-object/from16 v47, v27

    goto/16 :goto_21

    :cond_42
    const/16 v5, 0x8

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v42, v12

    move-object/from16 v44, v13

    move-object/from16 v47, v27

    goto/16 :goto_21

    :cond_43
    const/16 v5, 0x8

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v42, v12

    move-object/from16 v44, v13

    move-object/from16 v47, v27

    goto/16 :goto_21

    :cond_44
    const/16 v5, 0x8

    goto :goto_1d

    :cond_45
    const/16 v5, 0x8

    :goto_1d
    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_46

    iget-object v0, v0, Lyn;->M:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    move-object v7, v0

    goto :goto_1e

    :cond_46
    move-object/from16 v7, v39

    :goto_1e
    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_47

    iget-object v0, v0, Lyn;->K:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    move-object v6, v0

    goto :goto_1f

    :cond_47
    move-object/from16 v6, v39

    :goto_1f
    iget-object v0, v15, Lyn;->j:[Z

    const/16 v16, 0x0

    aget-boolean v20, v0, v16

    iget-object v0, v15, Lyn;->ar:[I

    aget v22, v0, v16

    iget-object v4, v15, Lyn;->K:Lym;

    iget-object v3, v15, Lyn;->M:Lym;

    iget v1, v15, Lyn;->aa:I

    iget v2, v15, Lyn;->ad:I

    iget-object v5, v15, Lyn;->E:[I

    aget v41, v5, v16

    iget v5, v15, Lyn;->af:F

    const/16 v17, 0x1

    aget v0, v0, v17

    const/4 v8, 0x3

    if-ne v0, v8, :cond_48

    const/16 v21, 0x1

    goto :goto_20

    :cond_48
    const/16 v21, 0x0

    :goto_20
    const/4 v0, 0x1

    move/from16 v43, v2

    move v2, v0

    iget v0, v15, Lyn;->w:I

    move/from16 v24, v0

    iget v0, v15, Lyn;->x:I

    move/from16 v25, v0

    iget v0, v15, Lyn;->y:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v44, v1

    move-object/from16 v1, p1

    move-object/from16 v45, v3

    move/from16 v3, v29

    move-object/from16 v46, v4

    move/from16 v4, v28

    move/from16 v40, v5

    move/from16 v5, v20

    move/from16 v8, v22

    move-object/from16 v47, v27

    move-object/from16 v48, v10

    move-object/from16 v10, v46

    move-object/from16 v49, v11

    move-object/from16 v11, v45

    move-object/from16 v42, v12

    move/from16 v12, v44

    move-object/from16 v44, v13

    move/from16 v13, v19

    move/from16 v14, v43

    move/from16 v15, v41

    move/from16 v16, v40

    move/from16 v17, v18

    move/from16 v18, v21

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v23

    move/from16 v22, v35

    move/from16 v23, v34

    move/from16 v27, v37

    invoke-direct/range {v0 .. v27}, Lyn;->c(Lyc;ZZZZLyh;Lyh;IZLym;Lym;IIIIFZZZZZIIIIFZ)V

    goto :goto_21

    :cond_49
    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v42, v12

    move-object/from16 v44, v13

    move-object/from16 v47, v27

    :goto_21
    if-eqz p2, :cond_4c

    move-object/from16 v15, p0

    iget-object v0, v15, Lyn;->i:Lzg;

    if-eqz v0, :cond_4d

    iget-object v1, v0, Lzg;->i:Lyz;

    iget-boolean v2, v1, Lyz;->i:Z

    if-eqz v2, :cond_4d

    iget-object v0, v0, Lzg;->j:Lyz;

    iget-boolean v0, v0, Lyz;->i:Z

    if-eqz v0, :cond_4d

    iget v0, v1, Lyz;->f:I

    move-object/from16 v14, p1

    move-object/from16 v13, v49

    invoke-virtual {v14, v13, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    iget v0, v0, Lyz;->f:I

    move-object/from16 v12, v48

    invoke-virtual {v14, v12, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->a:Lyz;

    iget v0, v0, Lyz;->f:I

    move-object/from16 v1, v47

    invoke-virtual {v14, v1, v0}, Lyc;->f(Lyh;I)V

    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_4b

    if-nez v30, :cond_4b

    if-eqz v28, :cond_4b

    iget-object v2, v15, Lyn;->j:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_4a

    iget-object v0, v0, Lyn;->N:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Lyc;->g(Lyh;Lyh;II)V

    const/4 v7, 0x0

    goto :goto_23

    :cond_4a
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_22

    :cond_4b
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_22
    const/4 v7, 0x0

    goto :goto_23

    :cond_4c
    move-object/from16 v15, p0

    :cond_4d
    move-object/from16 v14, p1

    move-object/from16 v1, v47

    move-object/from16 v12, v48

    move-object/from16 v13, v49

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x1

    :goto_23
    iget v0, v15, Lyn;->r:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4e

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    goto/16 :goto_2b

    :cond_4e
    if-eqz v7, :cond_59

    iget-boolean v0, v15, Lyn;->n:Z

    if-nez v0, :cond_59

    iget-object v0, v15, Lyn;->ar:[I

    aget v0, v0, v11

    if-ne v0, v3, :cond_4f

    instance-of v0, v15, Lyo;

    if-eqz v0, :cond_4f

    const/4 v9, 0x1

    goto :goto_24

    :cond_4f
    const/4 v9, 0x0

    :goto_24
    if-ne v11, v9, :cond_50

    const/16 v33, 0x0

    :cond_50
    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_51

    iget-object v0, v0, Lyn;->N:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    move-object v7, v0

    goto :goto_25

    :cond_51
    move-object/from16 v7, v39

    :goto_25
    iget-object v0, v15, Lyn;->V:Lyn;

    if-eqz v0, :cond_52

    iget-object v0, v0, Lyn;->L:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    move-object v6, v0

    goto :goto_26

    :cond_52
    move-object/from16 v6, v39

    :goto_26
    iget v0, v15, Lyn;->ac:I

    if-gtz v0, :cond_54

    iget v3, v15, Lyn;->ai:I

    if-ne v3, v2, :cond_53

    goto :goto_27

    :cond_53
    goto :goto_28

    :cond_54
    :goto_27
    iget-object v3, v15, Lyn;->O:Lym;

    iget-object v4, v3, Lym;->f:Lym;

    if-eqz v4, :cond_56

    invoke-virtual {v14, v1, v13, v0, v2}, Lyc;->m(Lyh;Lyh;II)V

    iget-object v0, v15, Lyn;->O:Lym;

    iget-object v0, v0, Lym;->f:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    iget-object v3, v15, Lyn;->O:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    invoke-virtual {v14, v1, v0, v3, v2}, Lyc;->m(Lyh;Lyh;II)V

    if-eqz v28, :cond_55

    iget-object v0, v15, Lyn;->N:Lym;

    invoke-virtual {v14, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v10, v1}, Lyc;->g(Lyh;Lyh;II)V

    const/16 v27, 0x0

    goto :goto_29

    :cond_55
    const/16 v27, 0x0

    goto :goto_29

    :cond_56
    iget v4, v15, Lyn;->ai:I

    if-ne v4, v2, :cond_57

    invoke-virtual {v3}, Lym;->b()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Lyc;->m(Lyh;Lyh;II)V

    goto :goto_28

    :cond_57
    invoke-virtual {v14, v1, v13, v0, v2}, Lyc;->m(Lyh;Lyh;II)V

    :goto_28
    move/from16 v27, v37

    :goto_29
    iget-object v0, v15, Lyn;->j:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Lyn;->ar:[I

    aget v8, v0, v11

    iget-object v4, v15, Lyn;->L:Lym;

    iget-object v3, v15, Lyn;->N:Lym;

    iget v1, v15, Lyn;->ab:I

    iget v2, v15, Lyn;->ae:I

    iget-object v10, v15, Lyn;->E:[I

    aget v16, v10, v11

    iget v10, v15, Lyn;->ag:F

    const/16 v17, 0x0

    aget v0, v0, v17

    const/4 v11, 0x3

    if-ne v0, v11, :cond_58

    const/16 v18, 0x1

    goto :goto_2a

    :cond_58
    const/16 v18, 0x0

    :goto_2a
    const/4 v0, 0x0

    move/from16 v19, v2

    move v2, v0

    iget v0, v15, Lyn;->z:I

    move/from16 v24, v0

    iget v0, v15, Lyn;->A:I

    move/from16 v25, v0

    iget v0, v15, Lyn;->B:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v3, v28

    move-object/from16 v21, v4

    move/from16 v4, v29

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v28, v12

    move/from16 v12, v20

    move-object/from16 v29, v13

    move/from16 v13, v33

    move/from16 v14, v19

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v36

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v38

    move/from16 v22, v34

    move/from16 v23, v35

    invoke-direct/range {v0 .. v27}, Lyn;->c(Lyc;ZZZZLyh;Lyh;IZLym;Lym;IIIIFZZZZZIIIIFZ)V

    goto :goto_2b

    :cond_59
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    :goto_2b
    if-eqz v32, :cond_5b

    move-object/from16 v6, p0

    iget v0, v6, Lyn;->C:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    iget v5, v6, Lyn;->D:F

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v42

    move-object/from16 v4, v44

    invoke-virtual/range {v0 .. v5}, Lyc;->n(Lyh;Lyh;Lyh;Lyh;F)V

    goto :goto_2c

    :cond_5a
    iget v5, v6, Lyn;->D:F

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-object/from16 v2, v44

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual/range {v0 .. v5}, Lyc;->n(Lyh;Lyh;Lyh;Lyh;F)V

    goto :goto_2c

    :cond_5b
    move-object/from16 v6, p0

    :goto_2c
    iget-object v0, v6, Lyn;->R:Lym;

    invoke-virtual {v0}, Lym;->h()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, v6, Lyn;->R:Lym;

    iget-object v0, v0, Lym;->f:Lym;

    iget-object v0, v0, Lym;->d:Lyn;

    iget v1, v6, Lyn;->F:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v6, Lyn;->R:Lym;

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    sget-object v3, Lyl;->b:Lyl;

    invoke-virtual {v6, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v8

    sget-object v3, Lyl;->c:Lyl;

    invoke-virtual {v6, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    invoke-virtual {v4, v3}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v10

    sget-object v3, Lyl;->d:Lyl;

    invoke-virtual {v6, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    invoke-virtual {v4, v3}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v3

    sget-object v5, Lyl;->e:Lyl;

    invoke-virtual {v6, v5}, Lyn;->m(Lyl;)Lym;

    move-result-object v5

    invoke-virtual {v4, v5}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v11

    sget-object v5, Lyl;->b:Lyl;

    invoke-virtual {v0, v5}, Lyn;->m(Lyl;)Lym;

    move-result-object v5

    invoke-virtual {v4, v5}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v5

    sget-object v7, Lyl;->c:Lyl;

    invoke-virtual {v0, v7}, Lyn;->m(Lyl;)Lym;

    move-result-object v7

    invoke-virtual {v4, v7}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v12

    sget-object v7, Lyl;->d:Lyl;

    invoke-virtual {v0, v7}, Lyn;->m(Lyl;)Lym;

    move-result-object v7

    invoke-virtual {v4, v7}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v15

    sget-object v7, Lyl;->e:Lyl;

    invoke-virtual {v0, v7}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    invoke-virtual {v4, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lyc;->a()Lyb;

    move-result-object v0

    int-to-double v6, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 p2, v15

    mul-double v14, v16, v6

    double-to-float v14, v14

    move-object v9, v0

    invoke-virtual/range {v9 .. v14}, Lyb;->j(Lyh;Lyh;Lyh;Lyh;F)V

    invoke-virtual {v4, v0}, Lyc;->e(Lyb;)V

    invoke-virtual/range {p1 .. p1}, Lyc;->a()Lyb;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    double-to-float v12, v1

    move-object v7, v0

    move-object v9, v3

    move-object v10, v5

    move-object/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lyb;->j(Lyh;Lyh;Lyh;Lyh;F)V

    invoke-virtual {v4, v0}, Lyc;->e(Lyb;)V

    goto :goto_2d

    :cond_5c
    move-object/from16 v4, p1

    :goto_2d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lyn;->b:Z

    iput-boolean v1, v0, Lyn;->n:Z

    sget-object v1, Lyc;->b:Lyd;

    if-eqz v1, :cond_5d

    iget v1, v4, Lyc;->j:I

    iget v1, v4, Lyc;->e:I

    :cond_5d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lyn;->ai:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 3

    iget-boolean v0, p0, Lyn;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lyn;->K:Lym;

    iget-boolean v0, v0, Lym;->c:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyn;->M:Lym;

    iget-boolean v0, v0, Lym;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public f()Z
    .locals 3

    iget-boolean v0, p0, Lyn;->n:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lyn;->L:Lym;

    iget-boolean v0, v0, Lym;->c:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyn;->N:Lym;

    iget-boolean v0, v0, Lym;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final g()I
    .locals 2

    invoke-virtual {p0}, Lyn;->l()I

    move-result v0

    iget v1, p0, Lyn;->X:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Lyn;->ai:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lyn;->X:I

    return v0
.end method

.method public final i()I
    .locals 2

    invoke-virtual {p0}, Lyn;->k()I

    move-result v0

    iget v1, p0, Lyn;->W:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final j()I
    .locals 2

    iget v0, p0, Lyn;->ai:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lyn;->W:I

    return v0
.end method

.method public final k()I
    .locals 2

    iget-object v0, p0, Lyn;->V:Lyn;

    if-eqz v0, :cond_0

    check-cast v0, Lyo;

    iget v0, v0, Lyo;->at:I

    iget v1, p0, Lyn;->aa:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lyn;->aa:I

    return v0
.end method

.method public final l()I
    .locals 2

    iget-object v0, p0, Lyn;->V:Lyn;

    if-eqz v0, :cond_0

    check-cast v0, Lyo;

    iget v0, v0, Lyo;->au:I

    iget v1, p0, Lyn;->ab:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lyn;->ab:I

    return v0
.end method

.method public m(Lyl;)Lym;
    .locals 1

    sget-object v0, Lyl;->a:Lyl;

    invoke-virtual {p1}, Lyl;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lyl;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lyn;->Q:Lym;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lyn;->P:Lym;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lyn;->R:Lym;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lyn;->O:Lym;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lyn;->N:Lym;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lyn;->M:Lym;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lyn;->L:Lym;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lyn;->K:Lym;

    return-object p1

    :pswitch_8
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(I)Lyn;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lyn;->M:Lym;

    iget-object v0, p1, Lym;->f:Lym;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lym;->f:Lym;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lym;->d:Lyn;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lyn;->N:Lym;

    iget-object v0, p1, Lym;->f:Lym;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lym;->f:Lym;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lym;->d:Lyn;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final o(I)Lyn;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lyn;->K:Lym;

    iget-object v0, p1, Lym;->f:Lym;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lym;->f:Lym;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lym;->d:Lyn;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lyn;->L:Lym;

    iget-object v0, p1, Lym;->f:Lym;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lym;->f:Lym;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lym;->d:Lyn;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final p(I)Lzi;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lyn;->h:Lze;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lyn;->i:Lzg;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final q(Lyo;Lyc;Ljava/util/HashSet;IZ)V
    .locals 6

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, Lys;->a(Lyo;Lyc;Lyn;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Lyo;->Y(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Lyn;->b(Lyc;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p4, p0, Lyn;->K:Lym;

    iget-object p4, p4, Lym;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lym;

    iget-object v0, p5, Lym;->d:Lyn;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->q(Lyo;Lyc;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lyn;->M:Lym;

    iget-object p4, p4, Lym;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lym;

    iget-object v0, p5, Lym;->d:Lyn;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->q(Lyo;Lyc;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p4, p0, Lyn;->L:Lym;

    iget-object p4, p4, Lym;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lym;

    iget-object v0, p5, Lym;->d:Lyn;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->q(Lyo;Lyc;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lyn;->N:Lym;

    iget-object p4, p4, Lym;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lym;

    iget-object v0, p5, Lym;->d:Lyn;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lyn;->q(Lyo;Lyc;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p4, p0, Lyn;->O:Lym;

    iget-object p4, p4, Lym;->a:Ljava/util/HashSet;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lym;

    iget-object v0, p5, Lym;->d:Lyn;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lyn;->q(Lyo;Lyc;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final r(Lyc;)V
    .locals 1

    iget-object v0, p0, Lyn;->K:Lym;

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    iget-object v0, p0, Lyn;->L:Lym;

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    iget-object v0, p0, Lyn;->M:Lym;

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    iget-object v0, p0, Lyn;->N:Lym;

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    iget v0, p0, Lyn;->ac:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lyn;->O:Lym;

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lyn;->h:Lze;

    if-nez v0, :cond_0

    new-instance v0, Lze;

    invoke-direct {v0, p0}, Lze;-><init>(Lyn;)V

    iput-object v0, p0, Lyn;->h:Lze;

    :cond_0
    iget-object v0, p0, Lyn;->i:Lzg;

    if-nez v0, :cond_1

    new-instance v0, Lzg;

    invoke-direct {v0, p0}, Lzg;-><init>(Lyn;)V

    iput-object v0, p0, Lyn;->i:Lzg;

    :cond_1
    return-void
.end method

.method public t(Ljava/lang/StringBuilder;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyn;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    actualWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lyn;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyn;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyn;->aa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lyn;->ab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lyn;->K:Lym;

    const-string v1, "left"

    invoke-static {p1, v1, v0}, Lyn;->U(Ljava/lang/StringBuilder;Ljava/lang/String;Lym;)V

    iget-object v0, p0, Lyn;->L:Lym;

    const-string v1, "top"

    invoke-static {p1, v1, v0}, Lyn;->U(Ljava/lang/StringBuilder;Ljava/lang/String;Lym;)V

    iget-object v0, p0, Lyn;->M:Lym;

    const-string v1, "right"

    invoke-static {p1, v1, v0}, Lyn;->U(Ljava/lang/StringBuilder;Ljava/lang/String;Lym;)V

    iget-object v0, p0, Lyn;->N:Lym;

    const-string v1, "bottom"

    invoke-static {p1, v1, v0}, Lyn;->U(Ljava/lang/StringBuilder;Ljava/lang/String;Lym;)V

    iget-object v0, p0, Lyn;->O:Lym;

    const-string v1, "baseline"

    invoke-static {p1, v1, v0}, Lyn;->U(Ljava/lang/StringBuilder;Ljava/lang/String;Lym;)V

    iget-object v0, p0, Lyn;->P:Lym;

    const-string v1, "centerX"

    invoke-static {p1, v1, v0}, Lyn;->U(Ljava/lang/StringBuilder;Ljava/lang/String;Lym;)V

    iget-object v0, p0, Lyn;->Q:Lym;

    const-string v1, "centerY"

    invoke-static {p1, v1, v0}, Lyn;->U(Ljava/lang/StringBuilder;Ljava/lang/String;Lym;)V

    iget v2, p0, Lyn;->W:I

    iget v3, p0, Lyn;->ad:I

    iget-object v0, p0, Lyn;->E:[I

    const/4 v9, 0x0

    aget v4, v0, v9

    iget v5, p0, Lyn;->w:I

    iget v6, p0, Lyn;->t:I

    iget v7, p0, Lyn;->y:F

    iget-object v0, p0, Lyn;->ar:[I

    aget v8, v0, v9

    iget-object v0, p0, Lyn;->am:[F

    aget v0, v0, v9

    const-string v1, "    width"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lyn;->X(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFI)V

    iget v2, p0, Lyn;->X:I

    iget v3, p0, Lyn;->ae:I

    iget-object v0, p0, Lyn;->E:[I

    const/4 v1, 0x1

    aget v4, v0, v1

    iget v5, p0, Lyn;->z:I

    iget v6, p0, Lyn;->u:I

    iget v7, p0, Lyn;->B:F

    iget-object v0, p0, Lyn;->ar:[I

    aget v8, v0, v1

    iget-object v0, p0, Lyn;->am:[F

    aget v0, v0, v1

    const-string v1, "    height"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lyn;->X(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFI)V

    iget v0, p0, Lyn;->Y:F

    iget v1, p0, Lyn;->Z:I

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    const-string v2, "    dimensionRatio :  ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "],\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v0, p0, Lyn;->af:F

    const-string v1, "    horizontalBias"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p1, v1, v0, v2}, Lyn;->V(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    iget v0, p0, Lyn;->ag:F

    const-string v1, "    verticalBias"

    invoke-static {p1, v1, v0, v2}, Lyn;->V(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    iget v0, p0, Lyn;->ak:I

    const-string v1, "    horizontalChainStyle"

    invoke-static {p1, v1, v0, v9}, Lyn;->W(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    iget v0, p0, Lyn;->al:I

    const-string v1, "    verticalChainStyle"

    invoke-static {p1, v1, v0, v9}, Lyn;->W(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v0, "  }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyn;->aj:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyn;->aj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lyn;->aa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lyn;->ab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lyn;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lyn;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lyl;Lyn;Lyl;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lyn;->m(Lyl;)Lym;

    move-result-object p1

    invoke-virtual {p2, p3}, Lyn;->m(Lyl;)Lym;

    move-result-object p2

    invoke-virtual {p1, p2, p4, p5}, Lym;->j(Lym;II)V

    return-void
.end method

.method public v()V
    .locals 5

    iget-object v0, p0, Lyn;->K:Lym;

    invoke-virtual {v0}, Lym;->d()V

    iget-object v0, p0, Lyn;->L:Lym;

    invoke-virtual {v0}, Lym;->d()V

    iget-object v0, p0, Lyn;->M:Lym;

    invoke-virtual {v0}, Lym;->d()V

    iget-object v0, p0, Lyn;->N:Lym;

    invoke-virtual {v0}, Lym;->d()V

    iget-object v0, p0, Lyn;->O:Lym;

    invoke-virtual {v0}, Lym;->d()V

    iget-object v0, p0, Lyn;->P:Lym;

    invoke-virtual {v0}, Lym;->d()V

    iget-object v0, p0, Lyn;->Q:Lym;

    invoke-virtual {v0}, Lym;->d()V

    iget-object v0, p0, Lyn;->R:Lym;

    invoke-virtual {v0}, Lym;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyn;->V:Lyn;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lyn;->F:F

    const/4 v1, 0x0

    iput v1, p0, Lyn;->W:I

    iput v1, p0, Lyn;->X:I

    const/4 v2, 0x0

    iput v2, p0, Lyn;->Y:F

    const/4 v2, -0x1

    iput v2, p0, Lyn;->Z:I

    iput v1, p0, Lyn;->aa:I

    iput v1, p0, Lyn;->ab:I

    iput v1, p0, Lyn;->ac:I

    iput v1, p0, Lyn;->ad:I

    iput v1, p0, Lyn;->ae:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lyn;->af:F

    iput v3, p0, Lyn;->ag:F

    iget-object v3, p0, Lyn;->ar:[I

    const/4 v4, 0x1

    aput v4, v3, v1

    aput v4, v3, v4

    iput-object v0, p0, Lyn;->ah:Ljava/lang/Object;

    iput v1, p0, Lyn;->ai:I

    iput v1, p0, Lyn;->ak:I

    iput v1, p0, Lyn;->al:I

    iget-object v0, p0, Lyn;->am:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v1

    aput v3, v0, v4

    iput v2, p0, Lyn;->q:I

    iput v2, p0, Lyn;->r:I

    iget-object v0, p0, Lyn;->E:[I

    const v3, 0x7fffffff

    aput v3, v0, v1

    aput v3, v0, v4

    iput v1, p0, Lyn;->t:I

    iput v1, p0, Lyn;->u:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lyn;->y:F

    iput v0, p0, Lyn;->B:F

    iput v3, p0, Lyn;->x:I

    iput v3, p0, Lyn;->A:I

    iput v1, p0, Lyn;->w:I

    iput v1, p0, Lyn;->z:I

    iput v2, p0, Lyn;->C:I

    iput v0, p0, Lyn;->D:F

    iget-object v0, p0, Lyn;->j:[Z

    aput-boolean v4, v0, v1

    aput-boolean v4, v0, v4

    iput-boolean v1, p0, Lyn;->H:Z

    iget-object v0, p0, Lyn;->U:[Z

    aput-boolean v1, v0, v1

    aput-boolean v1, v0, v4

    iput-boolean v4, p0, Lyn;->a:Z

    iget-object v0, p0, Lyn;->v:[I

    aput v1, v0, v1

    aput v1, v0, v4

    iput v2, p0, Lyn;->k:I

    iput v2, p0, Lyn;->l:I

    return-void
.end method

.method public final w()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyn;->b:Z

    iput-boolean v0, p0, Lyn;->n:Z

    iput-boolean v0, p0, Lyn;->o:Z

    iput-boolean v0, p0, Lyn;->p:Z

    iget-object v1, p0, Lyn;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lyn;->T:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lym;

    iput-boolean v0, v3, Lym;->c:Z

    iput v0, v3, Lym;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lyn;->ac:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyn;->G:Z

    return-void
.end method

.method public final y(II)V
    .locals 1

    iget-boolean v0, p0, Lyn;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyn;->K:Lym;

    invoke-virtual {v0, p1}, Lym;->e(I)V

    iget-object v0, p0, Lyn;->M:Lym;

    invoke-virtual {v0, p2}, Lym;->e(I)V

    iput p1, p0, Lyn;->aa:I

    sub-int/2addr p2, p1

    iput p2, p0, Lyn;->W:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyn;->b:Z

    return-void
.end method

.method public final z(II)V
    .locals 1

    iget-boolean v0, p0, Lyn;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyn;->L:Lym;

    invoke-virtual {v0, p1}, Lym;->e(I)V

    iget-object v0, p0, Lyn;->N:Lym;

    invoke-virtual {v0, p2}, Lym;->e(I)V

    iput p1, p0, Lyn;->ab:I

    sub-int/2addr p2, p1

    iput p2, p0, Lyn;->X:I

    iget-boolean p2, p0, Lyn;->G:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lyn;->O:Lym;

    iget v0, p0, Lyn;->ac:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lym;->e(I)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lyn;->n:Z

    return-void
.end method
