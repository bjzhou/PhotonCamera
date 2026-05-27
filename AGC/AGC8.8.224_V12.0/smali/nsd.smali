.class public final Lnsd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnsd;->a:Loiw;

    iput-object p2, p0, Lnsd;->b:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;)Lnsd;
    .locals 1

    new-instance v0, Lnsd;

    invoke-direct {v0, p0, p1}, Lnsd;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lnsc;
    .locals 3

    iget-object v0, p0, Lnsd;->a:Loiw;

    check-cast v0, Lfwp;

    invoke-virtual {v0}, Lfwp;->a()Lkli;

    move-result-object v0

    iget-object v1, p0, Lnsd;->b:Loiw;

    check-cast v1, Ljzo;

    invoke-virtual {v1}, Ljzo;->a()Lklj;

    move-result-object v1

    new-instance v2, Lnsc;

    invoke-direct {v2, v0, v1}, Lnsc;-><init>(Lkli;Lklj;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnsd;->a()Lnsc;

    move-result-object v0

    return-object v0
.end method
