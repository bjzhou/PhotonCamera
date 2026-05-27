.class public final Lkum;
.super Ljava/lang/Object;

# interfaces
.implements Lkus;
.implements Lkuq;


# instance fields
.field private final a:Lmqp;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ldne;

.field private final e:Lloi;


# direct methods
.method public constructor <init>(Lloi;Ldne;Lmqp;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkum;->e:Lloi;

    iput-object p2, p0, Lkum;->d:Ldne;

    iput-object p3, p0, Lkum;->a:Lmqp;

    iput-object p4, p0, Lkum;->b:Ljava/lang/String;

    iput-object p5, p0, Lkum;->c:Ljava/lang/String;

    return-void
.end method

.method private static c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-static {p3}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data1"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "data2"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static d(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Must have valid field name"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-static {p2}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 9

    iget-object v0, p0, Lkum;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const-string v1, "name"

    const-string v2, "vnd.android.cursor.dir/contact"

    const-string v3, "android.intent.action.INSERT"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkum;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwi;

    iget-object v0, v0, Lkwi;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lkum;->a:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkwi;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lkwi;->b:Lnxa;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-static {v3, v7, v6, v5}, Lkum;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lkwi;->c:Lnxa;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "vnd.android.cursor.item/phone_v2"

    const/4 v8, 0x3

    invoke-static {v3, v7, v8, v5}, Lkum;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lkwi;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v2, Lkwi;->e:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/website"

    const/4 v7, 0x5

    invoke-static {v3, v5, v7, v4}, Lkum;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    iget-object v4, v2, Lkwi;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v2, Lkwi;->d:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {v3, v5, v6, v4}, Lkum;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    iget-object v4, v2, Lkwi;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v2, v2, Lkwi;->g:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/organization"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v2}, Lkum;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "data"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_5
    iget-object v2, p0, Lkum;->a:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkwi;

    iget-object v2, v2, Lkwi;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkum;->d(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lkum;->a:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkwi;

    iget-object v1, v1, Lkwi;->f:Ljava/lang/String;

    const-string v2, "notes"

    invoke-static {v0, v2, v1}, Lkum;->d(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    sget-object v0, Llug;->a:Llug;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "No contact object present in ResultInfo. Defaulting to sending limited information with Intent. This should not happen"

    invoke-virtual {v0, p0, v5, v4}, Llug;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lkum;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final b()V
    .locals 6

    invoke-virtual {p0}, Lkum;->a()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lkum;->d:Ldne;

    iget-object v2, p0, Lkum;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lkum;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldne;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lkum;->e:Lloi;

    invoke-virtual {v1, v0}, Lloi;->k(Landroid/content/Intent;)V

    return-void
.end method
