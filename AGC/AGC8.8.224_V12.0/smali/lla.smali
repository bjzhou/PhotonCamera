.class public final Llla;
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

    iput-object p1, p0, Llla;->a:Loiw;

    iput-object p2, p0, Llla;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llkz;
    .locals 3

    iget-object v0, p0, Llla;->a:Loiw;

    iget-object v1, p0, Llla;->b:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Llkz;

    invoke-direct {v2, v0, v1}, Llkz;-><init>(Loiw;Landroid/content/Context;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llla;->a()Llkz;

    move-result-object v0

    return-object v0
.end method
