.class public final Logr;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field public static final a:Logr;


# instance fields
.field private final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Logr;

    invoke-direct {v0}, Logr;-><init>()V

    sput-object v0, Logr;->a:Logr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Logt;

    invoke-direct {v0}, Logt;-><init>()V

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Logr;->b:Lmrl;

    return-void
.end method

.method public static b()J
    .locals 2

    sget-object v0, Logr;->a:Logr;

    invoke-virtual {v0}, Logr;->d()Logs;

    move-result-object v0

    invoke-interface {v0}, Logs;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 2

    sget-object v0, Logr;->a:Logr;

    invoke-virtual {v0}, Logr;->d()Logs;

    move-result-object v0

    invoke-interface {v0}, Logs;->b()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Logr;->d()Logs;

    move-result-object v0

    return-object v0
.end method

.method public final d()Logs;
    .locals 1

    iget-object v0, p0, Logr;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Logs;

    return-object v0
.end method
