.class public final Lgsf;
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

    iput-object p1, p0, Lgsf;->a:Loiw;

    iput-object p2, p0, Lgsf;->b:Loiw;

    iput-object p3, p0, Lgsf;->c:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;)Lgsf;
    .locals 1

    new-instance v0, Lgsf;

    invoke-direct {v0, p0, p1, p2}, Lgsf;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lgse;
    .locals 4

    iget-object v0, p0, Lgsf;->a:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lgsf;->b:Loiw;

    check-cast v1, Lccs;

    invoke-virtual {v1}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lgsf;->c:Loiw;

    check-cast v2, Lccs;

    invoke-virtual {v2}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Lgse;

    invoke-direct {v3, v0, v1, v2}, Lgse;-><init>(ZZZ)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgsf;->a()Lgse;

    move-result-object v0

    return-object v0
.end method
