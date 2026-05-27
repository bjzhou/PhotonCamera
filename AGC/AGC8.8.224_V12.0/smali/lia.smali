.class public final Llia;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llia;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llhz;
    .locals 2

    iget-object v0, p0, Llia;->a:Loiw;

    check-cast v0, Llmq;

    invoke-virtual {v0}, Llmq;->a()Llmp;

    move-result-object v0

    new-instance v1, Llhz;

    invoke-direct {v1, v0}, Llhz;-><init>(Llmp;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llia;->a()Llhz;

    move-result-object v0

    return-object v0
.end method
