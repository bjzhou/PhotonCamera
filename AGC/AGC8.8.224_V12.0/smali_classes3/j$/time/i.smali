.class public final Lj$/time/i;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/chrono/c;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lj$/time/i;

.field public static final d:Lj$/time/i;


# instance fields
.field private final a:Lj$/time/g;

.field private final b:Lj$/time/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj$/time/g;->d:Lj$/time/g;

    sget-object v1, Lj$/time/k;->e:Lj$/time/k;

    invoke-static {v0, v1}, Lj$/time/i;->F(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v0

    sput-object v0, Lj$/time/i;->c:Lj$/time/i;

    sget-object v0, Lj$/time/g;->e:Lj$/time/g;

    sget-object v1, Lj$/time/k;->f:Lj$/time/k;

    invoke-static {v0, v1}, Lj$/time/i;->F(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v0

    sput-object v0, Lj$/time/i;->d:Lj$/time/i;

    return-void
.end method

.method private constructor <init>(Lj$/time/g;Lj$/time/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/i;->a:Lj$/time/g;

    iput-object p2, p0, Lj$/time/i;->b:Lj$/time/k;

    return-void
.end method

.method public static E(I)Lj$/time/i;
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lj$/time/g;->I(III)Lj$/time/g;

    move-result-object p0

    invoke-static {}, Lj$/time/k;->B()Lj$/time/k;

    move-result-object v0

    new-instance v1, Lj$/time/i;

    invoke-direct {v1, p0, v0}, Lj$/time/i;-><init>(Lj$/time/g;Lj$/time/k;)V

    return-object v1
.end method

.method public static F(Lj$/time/g;Lj$/time/k;)Lj$/time/i;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lj$/time/i;

    invoke-direct {v0, p0, p1}, Lj$/time/i;-><init>(Lj$/time/g;Lj$/time/k;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "time"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "date"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static G(JILj$/time/p;)Lj$/time/i;
    .locals 5

    if-eqz p3, :cond_0

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->l(J)V

    invoke-virtual {p3}, Lj$/time/p;->z()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p0, p2

    const p2, 0x15180

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3}, Lj$/nio/file/attribute/Y;->c(JJ)J

    move-result-wide v3

    invoke-static {p0, p1, p2, p3}, Lj$/nio/file/attribute/Y;->d(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    invoke-static {v3, v4}, Lj$/time/g;->J(J)Lj$/time/g;

    move-result-object p0

    int-to-long p1, p1

    const-wide/32 v3, 0x3b9aca00

    mul-long p1, p1, v3

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Lj$/time/k;->C(J)Lj$/time/k;

    move-result-object p1

    new-instance p2, Lj$/time/i;

    invoke-direct {p2, p0, p1}, Lj$/time/i;-><init>(Lj$/time/g;Lj$/time/k;)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "offset"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private J(Lj$/time/g;JJJJ)Lj$/time/i;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lj$/time/i;->b:Lj$/time/k;

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    invoke-direct {v0, v1, v6}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    div-long v4, p8, v2

    const-wide/32 v7, 0x15180

    div-long v9, p6, v7

    add-long/2addr v9, v4

    const-wide/16 v4, 0x5a0

    div-long v11, p4, v4

    add-long/2addr v11, v9

    const-wide/16 v9, 0x18

    div-long v13, p2, v9

    add-long/2addr v13, v11

    const/4 v11, 0x1

    int-to-long v11, v11

    mul-long v13, v13, v11

    rem-long v15, p8, v2

    rem-long v7, p6, v7

    const-wide/32 v17, 0x3b9aca00

    mul-long v7, v7, v17

    add-long/2addr v7, v15

    rem-long v4, p4, v4

    const-wide v15, 0xdf8475800L

    mul-long v4, v4, v15

    add-long/2addr v4, v7

    rem-long v7, p2, v9

    const-wide v9, 0x34630b8a000L

    mul-long v7, v7, v9

    add-long/2addr v7, v4

    invoke-virtual {v6}, Lj$/time/k;->I()J

    move-result-wide v4

    mul-long v7, v7, v11

    add-long/2addr v7, v4

    invoke-static {v7, v8, v2, v3}, Lj$/nio/file/attribute/Y;->c(JJ)J

    move-result-wide v9

    add-long/2addr v9, v13

    invoke-static {v7, v8, v2, v3}, Lj$/nio/file/attribute/Y;->d(JJ)J

    move-result-wide v2

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lj$/time/k;->C(J)Lj$/time/k;

    move-result-object v6

    :goto_0
    invoke-virtual {v1, v9, v10}, Lj$/time/g;->L(J)Lj$/time/g;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v1

    return-object v1
.end method

.method private Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;
    .locals 1

    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/i;

    invoke-direct {v0, p1, p2}, Lj$/time/i;-><init>(Lj$/time/g;Lj$/time/k;)V

    return-object v0
.end method

.method private q(Lj$/time/i;)I
    .locals 2

    iget-object v0, p1, Lj$/time/i;->a:Lj$/time/g;

    iget-object v1, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v1, v0}, Lj$/time/g;->r(Lj$/time/g;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    iget-object p1, p1, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0, p1}, Lj$/time/k;->n(Lj$/time/k;)I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0}, Lj$/time/k;->A()I

    move-result v0

    return v0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->D()I

    move-result v0

    return v0
.end method

.method public final C(Lj$/time/i;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lj$/time/i;->q(Lj$/time/i;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->P()J

    move-result-wide v3

    iget-object v0, p1, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->P()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0}, Lj$/time/k;->I()J

    move-result-wide v3

    iget-object p1, p1, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {p1}, Lj$/time/k;->I()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public final D(Lj$/time/i;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lj$/time/i;->q(Lj$/time/i;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->P()J

    move-result-wide v3

    iget-object v0, p1, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->P()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0}, Lj$/time/k;->I()J

    move-result-wide v3

    iget-object p1, p1, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {p1}, Lj$/time/k;->I()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public final H(JLj$/time/temporal/TemporalUnit;)Lj$/time/i;
    .locals 21

    move-object/from16 v10, p0

    move-wide/from16 v8, p1

    move-object/from16 v0, p3

    instance-of v1, v0, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    sget-object v2, Lj$/time/h;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    iget-object v2, v10, Lj$/time/i;->b:Lj$/time/k;

    iget-object v3, v10, Lj$/time/i;->a:Lj$/time/g;

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v3, v8, v9, v0}, Lj$/time/g;->K(JLj$/time/temporal/TemporalUnit;)Lj$/time/g;

    move-result-object v0

    invoke-direct {v10, v0, v2}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-wide/16 v0, 0x100

    div-long v4, v8, v0

    invoke-virtual {v3, v4, v5}, Lj$/time/g;->L(J)Lj$/time/g;

    move-result-object v3

    invoke-direct {v10, v3, v2}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/16 v2, 0xc

    mul-long v13, v0, v2

    iget-object v12, v11, Lj$/time/i;->a:Lj$/time/g;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/i;->J(Lj$/time/g;JJJJ)Lj$/time/i;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v1, v10, Lj$/time/i;->a:Lj$/time/g;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lj$/time/i;->J(Lj$/time/g;JJJJ)Lj$/time/i;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v1, v10, Lj$/time/i;->a:Lj$/time/g;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lj$/time/i;->J(Lj$/time/g;JJJJ)Lj$/time/i;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lj$/time/i;->I(J)Lj$/time/i;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    div-long v4, v8, v0

    invoke-virtual {v3, v4, v5}, Lj$/time/g;->L(J)Lj$/time/g;

    move-result-object v3

    invoke-direct {v10, v3, v2}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/32 v2, 0xf4240

    mul-long v19, v0, v2

    iget-object v12, v11, Lj$/time/i;->a:Lj$/time/g;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/i;->J(Lj$/time/g;JJJJ)Lj$/time/i;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide v0, 0x141dd76000L

    div-long v4, v8, v0

    invoke-virtual {v3, v4, v5}, Lj$/time/g;->L(J)Lj$/time/g;

    move-result-object v3

    invoke-direct {v10, v3, v2}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/16 v2, 0x3e8

    mul-long v19, v0, v2

    iget-object v12, v11, Lj$/time/i;->a:Lj$/time/g;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/i;->J(Lj$/time/g;JJJJ)Lj$/time/i;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v1, v10, Lj$/time/i;->a:Lj$/time/g;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/i;->J(Lj$/time/g;JJJJ)Lj$/time/i;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0, v10, v8, v9}, Lj$/time/temporal/TemporalUnit;->i(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/i;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I(J)Lj$/time/i;
    .locals 10

    iget-object v1, p0, Lj$/time/i;->a:Lj$/time/g;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/i;->J(Lj$/time/g;JJJJ)Lj$/time/i;

    move-result-object p1

    return-object p1
.end method

.method public final K(Lj$/time/p;)J
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj$/time/i;->M()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->P()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lj$/time/i;->N()Lj$/time/k;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/k;->J()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lj$/time/p;->z()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "offset"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final L()Lj$/time/g;
    .locals 1

    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    return-object v0
.end method

.method public final M()Lj$/time/chrono/b;
    .locals 1

    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    return-object v0
.end method

.method public final N()Lj$/time/k;
    .locals 1

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    return-object v0
.end method

.method public final O(JLj$/time/temporal/l;)Lj$/time/i;
    .locals 3

    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->a()Z

    move-result v0

    iget-object v1, p0, Lj$/time/i;->b:Lj$/time/k;

    iget-object v2, p0, Lj$/time/i;->a:Lj$/time/g;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/k;->K(JLj$/time/temporal/l;)Lj$/time/k;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v2, p1, p2, p3}, Lj$/time/g;->Q(JLj$/time/temporal/l;)Lj$/time/g;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/l;->i(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/i;

    return-object p1
.end method

.method public final P(Lj$/time/g;)Lj$/time/i;
    .locals 1

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-direct {p0, p1, v0}, Lj$/time/i;->Q(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 13

    instance-of v0, p1, Lj$/time/i;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/i;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lj$/time/s;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/s;

    invoke-virtual {p1}, Lj$/time/s;->B()Lj$/time/i;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lj$/time/o;

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/o;

    invoke-virtual {p1}, Lj$/time/o;->s()Lj$/time/i;

    move-result-object p1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p1}, Lj$/time/g;->s(Lj$/time/temporal/TemporalAccessor;)Lj$/time/g;

    move-result-object v0

    invoke-static {p1}, Lj$/time/k;->r(Lj$/time/temporal/TemporalAccessor;)Lj$/time/k;

    move-result-object v1

    new-instance v2, Lj$/time/i;

    invoke-direct {v2, v0, v1}, Lj$/time/i;-><init>(Lj$/time/g;Lj$/time/k;)V
    :try_end_0
    .catch Lj$/time/b; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    :goto_0
    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_e

    invoke-interface {p2}, Lj$/time/temporal/TemporalUnit;->a()Z

    move-result v0

    const-wide/16 v1, 0x1

    iget-object v3, p0, Lj$/time/i;->b:Lj$/time/k;

    iget-object v4, p0, Lj$/time/i;->a:Lj$/time/g;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lj$/time/g;->P()J

    move-result-wide v5

    invoke-virtual {v4}, Lj$/time/g;->P()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    iget-object p1, p1, Lj$/time/i;->b:Lj$/time/k;

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    invoke-virtual {v3, p1, p2}, Lj$/time/k;->a(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    invoke-virtual {p1}, Lj$/time/k;->I()J

    move-result-wide v9

    invoke-virtual {v3}, Lj$/time/k;->I()J

    move-result-wide v3

    sub-long/2addr v9, v3

    const-wide v3, 0x4e94914f0000L

    cmp-long p1, v5, v7

    if-lez p1, :cond_4

    sub-long/2addr v5, v1

    add-long/2addr v9, v3

    goto :goto_1

    :cond_4
    add-long/2addr v5, v1

    sub-long/2addr v9, v3

    :goto_1
    sget-object p1, Lj$/time/h;->a:[I

    check-cast p2, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/4 p1, 0x2

    int-to-long p1, p1

    invoke-static {v5, v6, p1, p2}, Lj$/io/a;->g(JJ)J

    move-result-wide p1

    const-wide v0, 0x274a48a78000L

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x18

    int-to-long p1, p1

    invoke-static {v5, v6, p1, p2}, Lj$/io/a;->g(JJ)J

    move-result-wide p1

    const-wide v0, 0x34630b8a000L

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x5a0

    int-to-long p1, p1

    invoke-static {v5, v6, p1, p2}, Lj$/io/a;->g(JJ)J

    move-result-wide p1

    const-wide v0, 0xdf8475800L

    goto :goto_2

    :pswitch_3
    const p1, 0x15180

    int-to-long p1, p1

    invoke-static {v5, v6, p1, p2}, Lj$/io/a;->g(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    goto :goto_2

    :pswitch_4
    const-wide/32 p1, 0x5265c00

    invoke-static {v5, v6, p1, p2}, Lj$/io/a;->g(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    goto :goto_2

    :pswitch_5
    const-wide p1, 0x141dd76000L

    invoke-static {v5, v6, p1, p2}, Lj$/io/a;->g(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    :goto_2
    move-wide v5, p1

    div-long/2addr v9, v0

    goto :goto_3

    :pswitch_6
    invoke-static {v5, v6, v3, v4}, Lj$/io/a;->g(JJ)J

    move-result-wide v5

    :goto_3
    invoke-static {v5, v6, v9, v10}, Lj$/io/a;->d(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_5
    iget-object v0, p1, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lj$/time/g;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v0, v4}, Lj$/time/g;->r(Lj$/time/g;)I

    move-result v8

    if-lez v8, :cond_7

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lj$/time/g;->P()J

    move-result-wide v8

    invoke-virtual {v4}, Lj$/time/g;->P()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_7

    :goto_4
    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    iget-object p1, p1, Lj$/time/i;->b:Lj$/time/k;

    if-eqz v8, :cond_9

    invoke-virtual {p1, v3}, Lj$/time/k;->n(Lj$/time/k;)I

    move-result v8

    if-gez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_9

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/g;->L(J)Lj$/time/g;

    move-result-object v0

    goto :goto_9

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v0, v4}, Lj$/time/g;->r(Lj$/time/g;)I

    move-result v5

    if-gez v5, :cond_b

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Lj$/time/g;->P()J

    move-result-wide v8

    invoke-virtual {v4}, Lj$/time/g;->P()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gez v5, :cond_b

    :goto_7
    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_d

    invoke-virtual {p1, v3}, Lj$/time/k;->n(Lj$/time/k;)I

    move-result p1

    if-lez p1, :cond_c

    const/4 v6, 0x1

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v0, v1, v2}, Lj$/time/g;->L(J)Lj$/time/g;

    move-result-object v0

    :cond_d
    :goto_9
    invoke-virtual {v4, v0, p2}, Lj$/time/g;->a(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_e
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->h(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    :catch_0
    move-exception p2

    new-instance v0, Lj$/time/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain LocalDateTime from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lj$/time/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic c(JLj$/time/temporal/l;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/i;->O(JLj$/time/temporal/l;)Lj$/time/i;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/c;

    invoke-virtual {p0, p1}, Lj$/time/i;->n(Lj$/time/chrono/c;)I

    move-result p1

    return p1
.end method

.method public final e(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/i;->H(JLj$/time/temporal/TemporalUnit;)Lj$/time/i;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/i;->H(JLj$/time/temporal/TemporalUnit;)Lj$/time/i;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/i;->H(JLj$/time/temporal/TemporalUnit;)Lj$/time/i;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/i;

    iget-object v1, p1, Lj$/time/i;->a:Lj$/time/g;

    iget-object v3, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v3, v1}, Lj$/time/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/i;->b:Lj$/time/k;

    iget-object p1, p1, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v1, p1}, Lj$/time/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f(Lj$/time/temporal/l;)I
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0, p1}, Lj$/time/k;->f(Lj$/time/temporal/l;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0, p1}, Lj$/time/g;->f(Lj$/time/temporal/l;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    invoke-static {p0, p1}, Lj$/io/a;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/l;)I

    move-result p1

    return p1
.end method

.method public final h(Lj$/time/temporal/l;)Z
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lj$/time/temporal/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/l;->h(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v1}, Lj$/time/k;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic i(Lj$/time/g;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/time/i;->P(Lj$/time/g;)Lj$/time/i;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lj$/time/temporal/l;)Lj$/time/temporal/q;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lj$/io/a;->c(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/l;)Lj$/time/temporal/q;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0, p1}, Lj$/time/g;->j(Lj$/time/temporal/l;)Lj$/time/temporal/q;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/l;->j(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/q;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lj$/time/temporal/l;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0, p1}, Lj$/time/k;->k(Lj$/time/temporal/l;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0, p1}, Lj$/time/g;->k(Lj$/time/temporal/l;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/l;->e(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic l(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/i;->H(JLj$/time/temporal/TemporalUnit;)Lj$/time/i;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/n;->b()Lj$/time/temporal/o;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/i;->a:Lj$/time/g;

    return-object p1

    :cond_0
    invoke-static {}, Lj$/time/temporal/n;->g()Lj$/time/temporal/o;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lj$/time/temporal/n;->f()Lj$/time/temporal/o;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lj$/time/temporal/n;->d()Lj$/time/temporal/o;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lj$/time/temporal/n;->c()Lj$/time/temporal/o;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lj$/time/i;->b:Lj$/time/k;

    goto :goto_1

    :cond_2
    invoke-static {}, Lj$/time/temporal/n;->a()Lj$/time/temporal/o;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/i;->M()Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    goto :goto_1

    :cond_3
    invoke-static {}, Lj$/time/temporal/n;->e()Lj$/time/temporal/o;

    move-result-object v0

    if-ne p1, v0, :cond_4

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    goto :goto_1

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->a(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final n(Lj$/time/chrono/c;)I
    .locals 2

    instance-of v0, p1, Lj$/time/i;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/i;

    invoke-direct {p0, p1}, Lj$/time/i;->q(Lj$/time/i;)I

    move-result p1

    return p1

    :cond_0
    check-cast p1, Lj$/time/i;

    iget-object v0, p1, Lj$/time/i;->a:Lj$/time/g;

    iget-object v1, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v1, v0}, Lj$/time/g;->q(Lj$/time/chrono/b;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    iget-object v1, p1, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0, v1}, Lj$/time/k;->n(Lj$/time/k;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/time/i;->M()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    invoke-virtual {p1}, Lj$/time/i;->M()Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->y()I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0}, Lj$/time/k;->u()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v1}, Lj$/time/k;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0}, Lj$/time/k;->y()I

    move-result v0

    return v0
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lj$/time/i;->a:Lj$/time/g;

    invoke-virtual {v0}, Lj$/time/g;->B()I

    move-result v0

    return v0
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Lj$/time/i;->b:Lj$/time/k;

    invoke-virtual {v0}, Lj$/time/k;->z()I

    move-result v0

    return v0
.end method
