.class public final Lohg;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field private static final a:Lohg;


# instance fields
.field private final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lohg;

    invoke-direct {v0}, Lohg;-><init>()V

    sput-object v0, Lohg;->a:Lohg;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lljr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lljr;-><init>([C)V

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Lohg;->b:Lmrl;

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lohg;->a:Lohg;

    invoke-virtual {v0}, Lohg;->c()Lljr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lohg;->c()Lljr;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lljr;
    .locals 1

    iget-object v0, p0, Lohg;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lljr;

    return-object v0
.end method
