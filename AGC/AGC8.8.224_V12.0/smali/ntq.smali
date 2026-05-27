.class public final Lntq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final d:Lloi;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteOpenHelper;

.field public final b:Lnti;

.field public final c:Lmwn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SqliteDbAdapter"

    invoke-static {v0}, Lloi;->s(Ljava/lang/String;)Lloi;

    move-result-object v0

    sput-object v0, Lntq;->d:Lloi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lntf;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lntf;->a:Lnxa;

    invoke-interface {v0}, Lnxa;->size()I

    move-result v0

    iget-object v1, p2, Lntf;->a:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v0, "schema must contain a single table, found %s"

    invoke-static {v3, v0, v1}, Lmoz;->h(ZLjava/lang/String;I)V

    iget-object p2, p2, Lntf;->a:Lnxa;

    invoke-interface {p2, v2}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnti;

    iput-object p2, p0, Lntq;->b:Lnti;

    iget-object v0, p2, Lnti;->b:Lnxa;

    invoke-interface {v0}, Lnxa;->size()I

    move-result v0

    invoke-static {v0}, Lmjy;->A(I)Ljava/util/HashSet;

    move-result-object v0

    iget-object p2, p2, Lnti;->b:Lnxa;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnte;

    iget-object v1, v1, Lnte;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p2

    iput-object p2, p0, Lntq;->c:Lmwn;

    new-instance p2, Lntp;

    invoke-direct {p2, p0, p1}, Lntp;-><init>(Lntq;Landroid/content/Context;)V

    iput-object p2, p0, Lntq;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lntq;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method
