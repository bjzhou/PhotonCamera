.class public final Lovu;
.super Ljava/lang/Object;

# interfaces
.implements Loku;
.implements Loli;


# instance fields
.field private final a:Loku;

.field private final b:Lola;


# direct methods
.method public constructor <init>(Loku;Lola;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lovu;->a:Loku;

    iput-object p2, p0, Lovu;->b:Lola;

    return-void
.end method


# virtual methods
.method public final cU()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lola;
    .locals 1

    iget-object v0, p0, Lovu;->b:Lola;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lovu;->a:Loku;

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Loli;
    .locals 1

    iget-object v0, p0, Lovu;->a:Loku;

    return-object v0
.end method
