.class public final Lkga;
.super Ljava/lang/Object;

# interfaces
.implements Lkeo;
.implements Ljzt;


# instance fields
.field public final a:Lkgi;

.field public final b:Lkeq;

.field public final c:Lknc;

.field public final d:Lkkc;

.field private final e:Lklj;


# direct methods
.method public constructor <init>(Lkgi;Lkeq;Lklj;Lkkc;Lknc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkga;->a:Lkgi;

    iput-object p2, p0, Lkga;->b:Lkeq;

    iput-object p3, p0, Lkga;->e:Lklj;

    iput-object p4, p0, Lkga;->d:Lkkc;

    iput-object p5, p0, Lkga;->c:Lknc;

    return-void
.end method

.method public static final f(Landroid/util/Printer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%-20s %s"

    invoke-static {p1, v0}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/Printer;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Lkfl;)Lkfj;
    .locals 0

    invoke-virtual {p0, p1}, Lkga;->c(Lkfl;)Lkfj;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final c(Lkfl;)Lkfj;
    .locals 3

    iget-object v0, p0, Lkga;->d:Lkkc;

    iget-object v0, v0, Lkkc;->a:Lmwn;

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkkb;

    iget-object v2, v1, Lkkb;->h:Lkfl;

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final d()Lkli;
    .locals 2

    iget-object v0, p0, Lkga;->e:Lklj;

    invoke-virtual {p0}, Lkga;->e()Lkll;

    move-result-object v1

    invoke-interface {v0, v1}, Lklj;->a(Lkll;)Lkli;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lkll;
    .locals 1

    iget-object v0, p0, Lkga;->b:Lkeq;

    iget-object v0, v0, Lkeq;->a:Lkll;

    return-object v0
.end method
