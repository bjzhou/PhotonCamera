.class public final Ldmi;
.super Ljava/lang/Object;

# interfaces
.implements Lfat;
.implements Lfav;
.implements Lfaz;


# instance fields
.field private final a:Ldhi;


# direct methods
.method public constructor <init>(Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmi;->a:Ldhi;

    new-instance p1, Lllj;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lllj;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final bM()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bN()V
    .locals 2

    iget-object v0, p0, Ldmi;->a:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    return-void
.end method
