.class public final Llmq;
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

    iput-object p1, p0, Llmq;->a:Loiw;

    iput-object p2, p0, Llmq;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llmp;
    .locals 3

    iget-object v0, p0, Llmq;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Llmq;->b:Loiw;

    new-instance v2, Llmp;

    invoke-direct {v2, v0, v1}, Llmp;-><init>(Landroid/content/Context;Loiw;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llmq;->a()Llmp;

    move-result-object v0

    return-object v0
.end method
