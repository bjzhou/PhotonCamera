.class public final synthetic Lffa;
.super Ljava/lang/Object;

# interfaces
.implements Lecm;


# instance fields
.field public final synthetic a:Lffp;

.field public final synthetic b:Lnou;


# direct methods
.method public synthetic constructor <init>(Lffp;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffa;->a:Lffp;

    iput-object p2, p0, Lffa;->b:Lnou;

    return-void
.end method


# virtual methods
.method public final a(Leea;IJLkou;)V
    .locals 1

    iget-object p1, p0, Lffa;->a:Lffp;

    iget-object p2, p0, Lffa;->b:Lnou;

    new-instance p5, Lehc;

    const/4 v0, 0x2

    invoke-direct {p5, p1, p3, p4, v0}, Lehc;-><init>(Lffp;JI)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {p2, p5, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
