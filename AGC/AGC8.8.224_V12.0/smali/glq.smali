.class public final Lglq;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglq;->a:Loiw;

    iput-object p2, p0, Lglq;->b:Loiw;

    iput-object p3, p0, Lglq;->c:Loiw;

    iput-object p4, p0, Lglq;->d:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;)Lglq;
    .locals 1

    new-instance v0, Lglq;

    invoke-direct {v0, p0, p1, p2, p3}, Lglq;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lglp;
    .locals 5

    iget-object v0, p0, Lglq;->a:Loiw;

    check-cast v0, Lijz;

    invoke-virtual {v0}, Lijz;->a()Lika;

    move-result-object v0

    iget-object v1, p0, Lglq;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lken;

    iget-object v2, p0, Lglq;->c:Loiw;

    check-cast v2, Lfwp;

    invoke-virtual {v2}, Lfwp;->a()Lkli;

    move-result-object v2

    iget-object v3, p0, Lglq;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljvs;

    new-instance v4, Lglp;

    invoke-direct {v4, v0, v1, v2, v3}, Lglp;-><init>(Lika;Lken;Lkli;Ljvs;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lglq;->a()Lglp;

    move-result-object v0

    return-object v0
.end method
