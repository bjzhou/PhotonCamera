.class public final Lfjy;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfjy;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;)Lfjy;
    .locals 1

    new-instance v0, Lfjy;

    invoke-direct {v0, p0}, Lfjy;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfjx;
    .locals 2

    iget-object v0, p0, Lfjy;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leah;

    new-instance v1, Lfjx;

    invoke-direct {v1, v0}, Lfjx;-><init>(Leah;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfjy;->a()Lfjx;

    move-result-object v0

    return-object v0
.end method
