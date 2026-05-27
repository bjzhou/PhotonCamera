.class public final Lgqu;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgqu;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lgqu;
    .locals 1

    new-instance v0, Lgqu;

    invoke-direct {v0, p0}, Lgqu;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lgqt;
    .locals 2

    iget-object v0, p0, Lgqu;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbc;

    new-instance v1, Lgqt;

    invoke-direct {v1, v0}, Lgqt;-><init>(Lkbc;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgqu;->b()Lgqt;

    move-result-object v0

    return-object v0
.end method
