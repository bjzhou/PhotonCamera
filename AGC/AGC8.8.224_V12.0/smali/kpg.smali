.class public final synthetic Lkpg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;I)V
    .locals 0

    iput p2, p0, Lkpg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkpg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfb;I)V
    .locals 0

    iput p2, p0, Lkpg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkpg;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9

    iget v0, p0, Lkpg;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkpg;->a:Ljava/lang/Object;

    check-cast p1, Lhgx;

    check-cast p2, Lhgx;

    check-cast v0, Lhfb;

    iget-object v0, v0, Lhfb;->a:Lhgd;

    invoke-interface {v0}, Lhgd;->b()Ljava/util/Comparator;

    move-result-object v0

    iget-object v3, p1, Lhgx;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, p2, Lhgx;->a:Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_6

    iget-boolean p1, p1, Lhgx;->d:Z

    iget-boolean p2, p2, Lhgx;->d:Z

    if-eq p1, p2, :cond_5

    if-eq v2, p1, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lkpg;->a:Ljava/lang/Object;

    check-cast p1, Lkpj;

    check-cast p2, Lkpj;

    iget-wide v3, p1, Lkpj;->b:J

    iget-wide v5, p2, Lkpj;->b:J

    cmp-long v7, v3, v5

    cmp-long v8, v3, v5

    if-eqz v8, :cond_0

    move v1, v7

    goto/16 :goto_0

    :cond_0
    iget-object v3, p1, Lkpj;->c:Ljava/lang/String;

    iget-object v4, p2, Lkpj;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lkpj;->e:Lkqq;

    invoke-interface {v3}, Lkqq;->i()Lkqy;

    move-result-object v3

    iget-object v3, v3, Lkqy;->d:Ljava/lang/String;

    invoke-static {v3}, Lmoz;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p2, Lkpj;->e:Lkqq;

    invoke-interface {v3}, Lkqq;->i()Lkqy;

    move-result-object v3

    iget-object v3, v3, Lkqy;->d:Ljava/lang/String;

    invoke-static {v3}, Lmoz;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p2, Lkpj;->e:Lkqq;

    invoke-interface {v2}, Lkqq;->i()Lkqy;

    move-result-object v2

    iget-object v2, v2, Lkqy;->d:Ljava/lang/String;

    invoke-static {v2}, Lmoz;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lkpj;->e:Lkqq;

    invoke-interface {v2}, Lkqq;->i()Lkqy;

    move-result-object v2

    iget-object v2, v2, Lkqy;->d:Ljava/lang/String;

    invoke-static {v2}, Lmoz;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lkpj;->e:Lkqq;

    invoke-interface {v0}, Lkqq;->i()Lkqy;

    move-result-object v0

    iget-object v0, v0, Lkqy;->d:Ljava/lang/String;

    iget-object v1, p2, Lkpj;->e:Lkqq;

    invoke-interface {v1}, Lkqq;->i()Lkqy;

    move-result-object v1

    iget-object v1, v1, Lkqy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    iget-wide v0, p1, Lkpj;->a:J

    iget-wide p1, p2, Lkpj;->a:J

    cmp-long v1, v0, p1

    :cond_4
    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move v1, v0

    :cond_7
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
