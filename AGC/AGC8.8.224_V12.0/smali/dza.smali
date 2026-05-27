.class public final Ldza;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;I)V
    .locals 0

    iput p2, p0, Ldza;->b:I

    iput-object p1, p0, Ldza;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcea;I)V
    .locals 0

    iput p2, p0, Ldza;->b:I

    iput-object p1, p0, Ldza;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput p2, p0, Ldza;->b:I

    iput-object p1, p0, Ldza;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Ldza;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    check-cast p1, Lkab;

    iget-object v0, p0, Ldza;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    sget-object p1, Lkab;->a:Lkab;

    goto :goto_0

    :cond_0
    :goto_0
    check-cast v0, Lcea;

    invoke-virtual {v0, p1}, Lcea;->e(Lkab;)Lkab;

    move-result-object p1

    iget p1, p1, Lkab;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ldza;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "type_uri"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-object v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lmoz;->p(Z)V

    invoke-static {p1, v1}, Llyh;->Q(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgqr;

    iget-object v0, p1, Lgqr;->a:Lkpb;

    invoke-interface {v0}, Lkpb;->d()J

    move-result-wide v3

    iget-object p1, p1, Lgqr;->a:Lkpb;

    invoke-interface {p1}, Lkpb;->close()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ldza;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkpb;

    invoke-interface {v5}, Lkpb;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :goto_3
    invoke-static {v1}, Lmoz;->p(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
