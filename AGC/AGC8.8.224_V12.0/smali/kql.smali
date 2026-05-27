.class public final Lkql;
.super Ljava/lang/Object;

# interfaces
.implements Lkqt;


# instance fields
.field public final a:Lkaq;

.field private final b:Lkof;


# direct methods
.method public constructor <init>(Lkof;Lkaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkql;->b:Lkof;

    const-string p1, "MediaFS-Q"

    invoke-interface {p2, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkql;->a:Lkaq;

    return-void
.end method


# virtual methods
.method public final a(Lkqy;Lkqo;)Lkqq;
    .locals 10

    iget-object v0, p1, Lkqy;->a:Lkqr;

    invoke-virtual {v0}, Lkqr;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lkqz;

    iget-object v1, p0, Lkql;->b:Lkof;

    invoke-virtual {p1}, Lkqy;->d()Z

    move-result v2

    invoke-static {v2}, Lmoz;->e(Z)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p2, Lkqo;->e:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p1, Lkqy;->c:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p1, Lkqy;->d:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "%s.%s"

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p2, Lkqo;->f:Ljava/lang/String;

    iget-object v4, p1, Lkqy;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p2, Lkqo;->i:Ljava/lang/String;

    iget-object v4, p2, Lkqo;->a:Landroid/content/Context;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p1, Lkqy;->a:Lkqr;

    invoke-virtual {v7, v4}, Lkqr;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    iget-object v4, p1, Lkqy;->b:Ljava/lang/String;

    aput-object v4, v5, v9

    const-string v4, "%s/%s"

    invoke-static {v6, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lkqy;->e:Ljava/lang/String;

    invoke-static {v3}, Lkwp;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lkqo;->j:Ljava/lang/String;

    iget v4, p2, Lkqo;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lkqy;->e:Ljava/lang/String;

    invoke-static {v3}, Lkwp;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lkqo;->j:Ljava/lang/String;

    iget v4, p2, Lkqo;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    iget-object v3, p2, Lkqo;->g:Ljava/lang/String;

    iget v4, p2, Lkqo;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Lkrb;

    iget-object v4, p2, Lkqo;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2, p2}, Lkrb;-><init>(Lkqy;Landroid/content/ContentResolver;Landroid/content/ContentValues;Lkqo;)V

    iget-object p1, p0, Lkql;->a:Lkaq;

    invoke-direct {v0, v1, v3, p1}, Lkqz;-><init>(Lkof;Lkrb;Lkaq;)V

    return-object v0

    :cond_2
    new-instance v0, Lkra;

    iget-object v1, p0, Lkql;->b:Lkof;

    iget-object v2, p0, Lkql;->a:Lkaq;

    invoke-static {p1, p2, v2}, Lkrd;->l(Lkqy;Lkqo;Lkaq;)Lkrd;

    move-result-object p1

    iget-object p2, p0, Lkql;->a:Lkaq;

    invoke-direct {v0, v1, p1, p2}, Lkra;-><init>(Lkof;Lkqq;Lkaq;)V

    return-object v0
.end method

.method public final b(Lkqo;)Lkqs;
    .locals 1

    new-instance v0, Lkqk;

    invoke-direct {v0, p0, p1}, Lkqk;-><init>(Lkql;Lkqo;)V

    return-object v0
.end method
