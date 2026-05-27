.class public final Lfaf;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lbkb;


# direct methods
.method public constructor <init>(Lbkb;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfaf;->a:Lbkb;

    return-void
.end method

.method public static b(Lbkb;)Lezy;
    .locals 0

    iget-object p0, p0, Lbkb;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lezy;

    return-object p0
.end method


# virtual methods
.method public final a()Lezy;
    .locals 1

    iget-object v0, p0, Lfaf;->a:Lbkb;

    invoke-static {v0}, Lfaf;->b(Lbkb;)Lezy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfaf;->a()Lezy;

    move-result-object v0

    return-object v0
.end method
