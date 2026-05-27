.class public final Loio;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field public static final a:Loio;


# instance fields
.field private final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loio;

    invoke-direct {v0}, Loio;-><init>()V

    sput-object v0, Loio;->a:Loio;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Loiq;

    invoke-direct {v0}, Loiq;-><init>()V

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Loio;->b:Lmrl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Loio;->b()Loip;

    move-result-object v0

    return-object v0
.end method

.method public final b()Loip;
    .locals 1

    iget-object v0, p0, Loio;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loip;

    return-object v0
.end method
