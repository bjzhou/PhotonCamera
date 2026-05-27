.class public final Leqz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lva;


# direct methods
.method public constructor <init>(Lva;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leqz;->a:Lva;

    return-void
.end method

.method public static b(Lva;)Leqz;
    .locals 7

    new-instance v6, Leqz;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Leqz;-><init>(Lva;[B[B[B[B)V

    return-object v6
.end method


# virtual methods
.method public final a()Lcdi;
    .locals 1

    iget-object v0, p0, Leqz;->a:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Lcdi;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leqz;->a()Lcdi;

    move-result-object v0

    return-object v0
.end method
