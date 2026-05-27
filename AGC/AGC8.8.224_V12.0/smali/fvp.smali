.class public final Lfvp;
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

    iput-object p1, p0, Lfvp;->a:Loiw;

    iput-object p2, p0, Lfvp;->b:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;)Lfvp;
    .locals 1

    new-instance v0, Lfvp;

    invoke-direct {v0, p0, p1}, Lfvp;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfvo;
    .locals 3

    iget-object v0, p0, Lfvp;->a:Loiw;

    check-cast v0, Lgca;

    invoke-virtual {v0}, Lgca;->a()Ljvs;

    move-result-object v0

    iget-object v1, p0, Lfvp;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvk;

    new-instance v2, Lfvo;

    invoke-direct {v2, v0, v1}, Lfvo;-><init>(Ljvs;Ljvk;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfvp;->a()Lfvo;

    move-result-object v0

    return-object v0
.end method
