.class public final Loqj;
.super Lore;


# instance fields
.field private final a:Loqh;


# direct methods
.method public constructor <init>(Loqh;)V
    .locals 0

    invoke-direct {p0}, Lore;-><init>()V

    iput-object p1, p0, Loqj;->a:Loqh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Loqj;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Loqj;->a:Loqh;

    invoke-interface {p1}, Loqh;->cN()V

    return-void
.end method
