.class public final Lkha;
.super Ljava/lang/Object;

# interfaces
.implements Lkfb;


# instance fields
.field public final a:Lklj;

.field private final b:Lkfb;


# direct methods
.method public constructor <init>(Lkhc;Lklj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkha;->b:Lkfb;

    iput-object p2, p0, Lkha;->a:Lklj;

    return-void
.end method


# virtual methods
.method public final a(Lkeq;)Lken;
    .locals 1

    iget-object v0, p0, Lkha;->b:Lkfb;

    invoke-interface {v0, p1}, Lkfb;->a(Lkeq;)Lken;

    move-result-object p1

    return-object p1
.end method
