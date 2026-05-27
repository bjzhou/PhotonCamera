.class public final Lmnk;
.super Lmnh;

# interfaces
.implements Lmnf;


# instance fields
.field private final a:Ljava/lang/Exception;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmnf;Lmno;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmnh;-><init>(Ljava/lang/String;Lmnt;Lmno;)V

    invoke-interface {p2}, Lmnf;->e()Ljava/lang/Exception;

    move-result-object p1

    iput-object p1, p0, Lmnk;->a:Ljava/lang/Exception;

    iput-boolean p4, p0, Lmnk;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmno;)V
    .locals 1

    sget-object v0, Lmni;->a:Lmni;

    invoke-virtual {v0}, Lmni;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lmnh;-><init>(Ljava/lang/String;Ljava/util/UUID;Lmno;)V

    sget-object p1, Lmnj;->a:Lmnd;

    iput-object p1, p0, Lmnk;->a:Ljava/lang/Exception;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmnk;->b:Z

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lmno;Z)Lmnt;
    .locals 2

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lmnk;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lmoc;->a:Ljava/util/WeakHashMap;

    :cond_0
    new-instance v0, Lmnk;

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lmnk;->b:Z

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    iget-boolean p3, p0, Lmnk;->b:Z

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p0, p2, v1}, Lmnk;-><init>(Ljava/lang/String;Lmnf;Lmno;Z)V

    return-object v0
.end method

.method public final e()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lmnk;->a:Ljava/lang/Exception;

    return-object v0
.end method

.method public final g(Ljava/lang/String;Lmno;)Lmnt;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmnk;->d(Ljava/lang/String;Lmno;Z)Lmnt;

    move-result-object p1

    return-object p1
.end method
