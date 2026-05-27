.class public final Lhmj;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhmj;->a:Loiw;

    iput-object p2, p0, Lhmj;->b:Loiw;

    iput-object p3, p0, Lhmj;->c:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;)Lhmj;
    .locals 1

    new-instance v0, Lhmj;

    invoke-direct {v0, p0, p1, p2}, Lhmj;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lhmi;
    .locals 4

    iget-object v0, p0, Lhmj;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v1, p0, Lhmj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lily;

    iget-object v2, p0, Lhmj;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    new-instance v3, Lhmi;

    invoke-direct {v3, v0, v1, v2}, Lhmi;-><init>(Ljvs;Lily;Ldhi;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhmj;->a()Lhmi;

    move-result-object v0

    return-object v0
.end method
