.class public Landroidx/constraintlayout/core/parser/CLToken;
.super Landroidx/constraintlayout/core/parser/CLElement;
.source "CLToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLToken$Type;
    }
.end annotation


# instance fields
.field index:I

.field tokenFalse:[C

.field tokenNull:[C

.field tokenTrue:[C

.field type:Landroidx/constraintlayout/core/parser/CLToken$Type;


# direct methods
.method public constructor <init>([C)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "true"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "false"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/parser/CLElement;-><init>([C)V

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const-string v0, "null"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    iput-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static allocate([C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLToken;-><init>([C)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/parser/CLToken;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public getBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "this token is not a boolean: <"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    return v0

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v2, ">"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public getType()Landroidx/constraintlayout/core/parser/CLToken$Type;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public isNull()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    const-string v2, ">"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_a
    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    const-string v2, "this token is not a null: <"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLToken;->addIndent(Ljava/lang/StringBuilder;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method protected toJSON()Ljava/lang/String;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "<"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    return-object v0

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, ">"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public validate(CJ)Z
    .locals 6

    goto/32 :goto_4a

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    iget v4, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    array-length v1, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_46

    nop

    nop

    :goto_7
    goto/32 :goto_44

    nop

    nop

    :goto_8
    if-eq v4, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget-char v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenTrue:[C

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_e
    if-eq v5, p1, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    aget-char v5, v1, v4

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v1, p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3c

    nop

    nop

    :goto_12
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aget-char v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_17
    iget v2, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLToken$Type;->ordinal()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1a
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_43

    nop

    nop

    :goto_1c
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_35

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_22
    const/4 v0, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_23
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_24
    array-length v1, v1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_25
    iget v4, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v1, p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_28
    iput-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_29
    if-eq v4, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    move v2, v3

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_51

    nop

    nop

    :goto_2c
    goto :goto_35

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eq v5, p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    goto :goto_35

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    array-length v1, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_30
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_32
    goto :goto_35

    nop

    :goto_33
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    :goto_35
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    :goto_37
    add-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_38
    add-int/2addr v4, v3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_39
    aget v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenFalse:[C

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3e
    aget-char v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/parser/CLToken;->setEnd(J)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->tokenNull:[C

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_41
    move v2, v3

    nop

    :goto_42
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_43
    move v0, v2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_45
    return v0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :goto_46
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_9

    nop

    goto/32 :goto_35

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v4, p0, Landroidx/constraintlayout/core/parser/CLToken;->index:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_49
    const/4 v2, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4c
    aget-char v5, v1, v4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eq v1, p1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4e
    aget-char v5, v1, v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4f
    if-eq v4, v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_50
    if-eq v5, p1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_c
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move v0, v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v1, p0, Landroidx/constraintlayout/core/parser/CLToken;->type:Landroidx/constraintlayout/core/parser/CLToken$Type;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
