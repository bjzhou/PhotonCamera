.class public final Lkje;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkje;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkdy;
    .locals 1

    iget-object v0, p0, Lkje;->a:Loiw;

    check-cast v0, Lkge;

    invoke-virtual {v0}, Lkge;->a()Lkeq;

    move-result-object v0

    iget-object v0, v0, Lkeq;->j:Lkdy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkje;->a()Lkdy;

    move-result-object v0

    return-object v0
.end method
