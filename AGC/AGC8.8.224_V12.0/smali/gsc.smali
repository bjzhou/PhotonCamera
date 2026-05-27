.class public final Lgsc;
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

    iput-object p1, p0, Lgsc;->a:Loiw;

    iput-object p2, p0, Lgsc;->b:Loiw;

    iput-object p3, p0, Lgsc;->c:Loiw;

    iput-object p4, p0, Lgsc;->d:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;)Lgsc;
    .locals 1

    new-instance v0, Lgsc;

    invoke-direct {v0, p0, p1, p2, p3}, Lgsc;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lgsb;
    .locals 5

    iget-object v0, p0, Lgsc;->a:Loiw;

    check-cast v0, Lccs;

    invoke-virtual {v0}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lgsc;->b:Loiw;

    check-cast v1, Lccs;

    invoke-virtual {v1}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lgsc;->c:Loiw;

    check-cast v2, Lccs;

    invoke-virtual {v2}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lgsc;->d:Loiw;

    check-cast v3, Lccs;

    invoke-virtual {v3}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Lgsb;

    invoke-direct {v4, v0, v1, v2, v3}, Lgsb;-><init>(ZZZZ)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgsc;->a()Lgsb;

    move-result-object v0

    return-object v0
.end method
