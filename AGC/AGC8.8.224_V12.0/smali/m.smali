.class abstract Lm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ln;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final a:Ln;

.field protected final b:Ln;


# direct methods
.method protected constructor <init>(Ln;Ln;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm;->a:Ln;

    iput-object p2, p0, Lm;->b:Ln;

    return-void
.end method
