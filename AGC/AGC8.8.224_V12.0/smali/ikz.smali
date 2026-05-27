.class public interface abstract Likz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnou;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Likt;

    invoke-direct {v0}, Likt;-><init>()V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    sput-object v0, Likz;->a:Lnou;

    return-void
.end method


# virtual methods
.method public abstract a()Lnou;
.end method

.method public abstract b(Liky;)V
.end method

.method public abstract c()V
.end method
