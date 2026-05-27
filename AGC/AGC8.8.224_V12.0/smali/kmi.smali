.class public final Lkmi;
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

    iput-object p1, p0, Lkmi;->a:Loiw;

    iput-object p2, p0, Lkmi;->b:Loiw;

    iput-object p3, p0, Lkmi;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkkz;
    .locals 3

    iget-object v0, p0, Lkmi;->a:Loiw;

    check-cast v0, Lkla;

    invoke-virtual {v0}, Lkla;->a()Lkkz;

    move-result-object v0

    iget-object v1, p0, Lkmi;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbc;

    iget-object v1, p0, Lkmi;->c:Loiw;

    check-cast v1, Lkao;

    invoke-virtual {v1}, Lkao;->a()Lkaq;

    new-instance v1, Lkkz;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lkkz;-><init>(Lkpc;I)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkmi;->a()Lkkz;

    move-result-object v0

    return-object v0
.end method
