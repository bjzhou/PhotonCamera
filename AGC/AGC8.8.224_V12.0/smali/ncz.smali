.class final Lncz;
.super Lndd;


# static fields
.field public static final a:Lncz;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lncz;

    sget-object v1, Lndf;->a:Lndd;

    invoke-direct {v0, v1}, Lncz;-><init>(Lndd;)V

    sput-object v0, Lncz;->a:Lncz;

    return-void
.end method

.method public constructor <init>(Lndd;)V
    .locals 1

    invoke-direct {p0}, Lndd;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lncz;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a()Lnbu;
    .locals 1

    iget-object v0, p0, Lncz;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lndd;

    invoke-virtual {v0}, Lndd;->a()Lnbu;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lndl;
    .locals 1

    iget-object v0, p0, Lncz;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lndd;

    invoke-virtual {v0}, Lndd;->b()Lndl;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/util/logging/Level;Z)V
    .locals 1

    iget-object v0, p0, Lncz;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lndd;

    invoke-virtual {v0, p1, p2, p3}, Lndd;->c(Ljava/lang/String;Ljava/util/logging/Level;Z)V

    return-void
.end method
