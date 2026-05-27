.class public final Lool;
.super Ljava/lang/Object;

# interfaces
.implements Looc;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:Lomo;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILomo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lool;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lool;->b:I

    iput-object p3, p0, Lool;->c:Lomo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Look;

    invoke-direct {v0, p0}, Look;-><init>(Lool;)V

    return-object v0
.end method
