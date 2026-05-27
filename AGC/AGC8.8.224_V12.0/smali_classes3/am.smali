.class public final Lam;
.super Ljava/lang/Object;


# instance fields
.field final a:Lan;

.field b:Lam;

.field public c:I

.field d:I

.field public e:I

.field public f:Lal;

.field final g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lan;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lam;->c:I

    const/4 v1, -0x1

    iput v1, p0, Lam;->d:I

    const/4 v1, 0x1

    iput v1, p0, Lam;->h:I

    iput v1, p0, Lam;->i:I

    iput v0, p0, Lam;->e:I

    iput-object p1, p0, Lam;->a:Lan;

    iput p2, p0, Lam;->g:I

    return-void
.end method

.method private final f(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lam;->g:I

    invoke-static {v1}, Ld;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lam;->b:Lam;

    if-eqz v1, :cond_0

    invoke-direct {v1, p1}, Lam;->f(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " connected to "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "<-"

    return-object p1
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lam;->a:Lan;

    iget v0, v0, Lan;->K:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lam;->d:I

    if-ltz v0, :cond_1

    iget-object v2, p0, Lam;->b:Lam;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lam;->a:Lan;

    iget v2, v2, Lan;->K:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lam;->c:I

    return v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lam;->b:Lam;

    const/4 v0, 0x0

    iput v0, p0, Lam;->c:I

    const/4 v1, -0x1

    iput v1, p0, Lam;->d:I

    const/4 v1, 0x2

    iput v1, p0, Lam;->h:I

    iput v0, p0, Lam;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lam;->i:I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lam;->b:Lam;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lam;IIIIZ)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lam;->b:Lam;

    iput v2, p0, Lam;->c:I

    iput v1, p0, Lam;->d:I

    iput v3, p0, Lam;->h:I

    iput v0, p0, Lam;->e:I

    return-void

    :cond_0
    if-nez p6, :cond_d

    iget p6, p1, Lam;->g:I

    iget v4, p0, Lam;->g:I

    const/4 v5, 0x6

    if-ne p6, v4, :cond_2

    const/4 p6, 0x7

    if-ne v4, p6, :cond_1

    goto :goto_0

    :cond_1
    if-ne v4, v5, :cond_d

    iget-object p6, p1, Lam;->a:Lan;

    invoke-virtual {p6}, Lan;->r()Z

    move-result p6

    if-eqz p6, :cond_3

    iget-object p6, p0, Lam;->a:Lan;

    invoke-virtual {p6}, Lan;->r()Z

    move-result p6

    if-eqz p6, :cond_3

    goto :goto_6

    :cond_2
    add-int/2addr v4, v1

    const/16 v1, 0x9

    const/16 v6, 0x8

    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    goto :goto_5

    :pswitch_1
    if-eq p6, v5, :cond_3

    if-eq p6, v6, :cond_3

    if-eq p6, v1, :cond_3

    goto :goto_6

    :pswitch_2
    const/4 v0, 0x3

    if-eq p6, v0, :cond_5

    const/4 v0, 0x5

    if-ne p6, v0, :cond_4

    const/4 p6, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget-object v4, p1, Lam;->a:Lan;

    instance-of v4, v4, Lap;

    if-eqz v4, :cond_7

    if-nez v0, :cond_c

    if-ne p6, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    move v3, v0

    goto :goto_4

    :pswitch_3
    if-eq p6, v0, :cond_9

    const/4 v0, 0x4

    if-ne p6, v0, :cond_8

    const/4 p6, 0x4

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    :goto_3
    iget-object v1, p1, Lam;->a:Lan;

    instance-of v1, v1, Lap;

    if-eqz v1, :cond_b

    if-nez v0, :cond_c

    if-ne p6, v6, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    move v3, v0

    :cond_c
    :goto_4
    if-nez v3, :cond_d

    goto :goto_0

    :goto_5
    return-void

    :cond_d
    :goto_6
    iput-object p1, p0, Lam;->b:Lam;

    if-lez p2, :cond_e

    iput p2, p0, Lam;->c:I

    goto :goto_7

    :cond_e
    iput v2, p0, Lam;->c:I

    :goto_7
    iput p3, p0, Lam;->d:I

    iput p4, p0, Lam;->h:I

    iput p5, p0, Lam;->e:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lam;->f:Lal;

    if-nez v0, :cond_0

    new-instance v0, Lal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lal;-><init>(I)V

    iput-object v0, p0, Lam;->f:Lal;

    return-void

    :cond_0
    invoke-virtual {v0}, Lal;->b()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lam;->g:I

    invoke-static {v2}, Ld;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lam;->b:Lam;

    if-eqz v2, :cond_0

    invoke-direct {v2, v0}, Lam;->f(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " connected to "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
